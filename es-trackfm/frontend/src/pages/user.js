import React, { Component } from 'react';
import { withRouter } from 'react-router-dom';

class User extends Component
{
    constructor ()
    {
        super();
        this.state = 
        {
            loading   : true,
            tracks    : [],
            album     : [],
            image     : [],
            top : []
        }
    }

    componentDidMount () 
    {
        const queryString = window.location.search;
        const urlParams = new URLSearchParams(queryString);

        this.setState({ isLoading: true });
                
        Promise.all([
            
            fetch('http://localhost:8080/userinfo/?name=' + urlParams.get('name')),
            fetch('http://localhost:8080/recenttracks/'),
            fetch('http://localhost:8080/userartists/?name=' + urlParams.get('name'))])
             
            .then(([res1, res2, res3]) => Promise.all([res1.json(), res2.json(), res3.json()]))
            .then(([data1, data2, data3]) => this.setState({
                info: data1,
                playlists: data1.playlists,
                playcount: data1.playcount,
                country  : data1.country,
                name     : data1.name,
                image    : data1.image,
                tracks   : data2.recenttracks.track,
                top      : data3,
                isLoading: false

            })).catch(Error => {
                console.log("artista not found.")
                this.props.history.push('/error');
            });
    }

    render ()
    {

        const { info, isLoading, playcount, playlists, country, name, image, tracks, trackAlbum, txt, top} = this.state;
        return (
        <div>

            <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
                <div class="container">
                <a role="button" class="btn  btn-light btn-circle btn-sm" aria-pressed="true" href="/">&#x2190;</a>
                <p> &nbsp; &nbsp;</p>
                <a class="navbar-brand js-scroll-trigger" href="#page-top">Track FM <b>users  </b> </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                    
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#recentracks">Recent Tracks</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#topartists">Top Artists</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#topalbums">Top Albums</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#toptracks">Top tracks</a>
                    </li>
                    </ul>
                </div>
                </div>
            </nav>


            <section id="userprofile">
                <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <div class="card">
                            <div class="card-body text-center">
                                {!(image == undefined) ? 
                                <div> <img src={!(image.filter((x, index) => index == 1)[0] == undefined) ? image.filter((x, index) => index == 1)[0]["#text"]
                                            : console.log("Loading....")} class="img-lg rounded-circle mb-4" alt="profile image"/>
                                    <h4>{name}</h4>
                                    <p class="text-muted mb-0">User</p>
                                </div>
                                : this.props.history.push("/error")}
                                <br/> 
                                <div class="border-top pt-3">
                                    <div class="row">
                                        <div class="col-4">
                                            <p>Playlists</p>
                                            <h6>{playlists}</h6>
                                        </div>
                                        <div class="col-4">
                                            <p>Playcount</p>
                                            <h6>{parseInt(playcount).toLocaleString(navigator.language, {minimumFractionDigits: 0})}</h6>
                                        </div>
                                        <div class="col-4">
                                            <p>Country</p>
                                            <h6>{country}</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </section>

            <section id="recentracks" class="bg-light">
                <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                    <h2>Recent Tracks</h2>
                    <br/>
                    <br/>
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Album</th>
                            <th scope="col">Artist</th>
                            <th scope="col">Date</th>
                        </tr>
                        </thead>
                        <tbody>
                        {console.log(tracks)}
                         { !isLoading ? ( tracks.map( (tracks, index) => {
                                        return(
                                            <tr>
                                                <th scope="row">{index+1}</th>
                                                <td>{tracks.name}</td>
                                                <td>{tracks.album["#text"]}</td>
                                                <td><a href={"/artist?name="+tracks.artist["#text"]}>{tracks.artist["#text"]}</a></td>
                                                <td>{tracks.date != null ? tracks.date["#text"] :<p>Playing</p>}</td>
                                            </tr>
                                        );
                                    })
                                ) : (<tr><td><h3> Loading ... </h3></td></tr>) }
                        </tbody>
                    </table>
                    </div>
                </div>
                </div>
            </section>


            <section id="topartists">
                <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                    <h2>Top Artists</h2>
                    <br/> 
                    <br/>
                    <table class="table table-striped">

                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Playcount</th>
                        </tr>
                        </thead>
                        <tbody>
                        {!isLoading ? top.map((artist, index) => {
                            return (
                                <tr>
                                    <th scope="row">{index+1}</th>
                                    <td><a href={"/artist?name="+artist.name}>{artist.name}</a></td>
                                    <td>{artist.playcount}</td>
                                </tr>
                            )
                        }) : <tr><td><h3>Loading...</h3></td></tr>}
                        </tbody>
                    </table>
                    </div>
                </div>
                </div>
            </section>

            <footer class="py-5 bg-dark">
                <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; es.labproj.trackfm</p>
                </div>
            </footer>
        </div>

        )

    }



}

export default withRouter(  User);