import React, { Component } from 'react';
import { withRouter } from 'react-router-dom';

class Artist extends Component 
{
    constructor(props)
    {
        super(props);
        this.state = {
            loading : true,
            info : [],
            bio : [],
            stats : [],
            tags: [],
            similar: [],
            ontour: null,
            tag: [],
            similarArtists: []
        }
    }
    
    componentDidMount ()
    {
        const queryString = window.location.search;
        const urlParams = new URLSearchParams(queryString);

        fetch('http://localhost:8080/artist/?name=' + urlParams.get('name'))
        .then(response => response.json())
        .then(data =>
            this.setState({
                info      : data,
                bio       : data.bio,
                stats     : data.stats,
                tags      : data.tags,   
                tag       : data.tags.tag,
                similar   : data.similar,
                ontour    : data.ontour,
                similarArtists : data.similar.artist,
                isLoading : false,
            })) 
        .catch((error) => {
            console.log("artista not found.")
            this.props.history.push('/error');
        });
    }   
    
    render ()
    {

        console.log(this.state.tag);   
        console.log("ola");
        return(
        <div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
                <div class="container">
                    <a role="button" class="btn  btn-light btn-circle btn-sm" aria-pressed="true" href="/">&#x2190;</a>
                    <p> &nbsp; &nbsp;</p>
                    <a class="navbar-brand js-scroll-trigger" href="#page-top" >Track FM <b>  artists  </b> </a>
                
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                    
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#bio">Bio</a>
                        </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#tags">Tags</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#similar">Similar Artists</a>
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
                                    
                                    {!this.state.isLoading ? ( 
                                     <div>
                                        <div> 
                                            <img src="artist.jpg" class="img-lg rounded-circle mb-4" alt="profile image"></img>   
                                        <h4>{this.state.info.name}</h4>
                                        <p class="text-muted mb-0">Artist</p>
                                        <br/>
                                        </div>
                                        
                                    <div class="border-top pt-3">
                                    <h6 align="left"> Summary </h6>
                                    <p class="mt-2 card-text text-muted"  align="justify">{this.state.bio.summary}</p>
                                    <div class="border-top pt-3">
                                        <div class="row">
                                            <div class="col-4">
                                                <p>Listeners</p>
                                                  <h6>{parseInt(this.state.stats.listeners).toLocaleString(navigator.language, {minimumFractionDigits: 0})}</h6>
                                            </div>
                                            <div class="col-4">
                                                <p>Playcount</p>
                                                 <h6>{parseInt(this.state.stats.playcount).toLocaleString(navigator.language, {minimumFractionDigits: 0})}</h6>
                                            </div>
                                            <div class="col-4">
                                                <p>On Tour</p>
                                                {this.state.ontour == "1" ? <h6>Yes</h6> : <h6>No</h6>}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </div>
                                    ) : (
                                        <h3>Loading...</h3>
                                    )}
                                 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section id="bio" class="bg-light">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <h2>Bio</h2>
                            <p class="mt-2 card-text text-muted"  align="justify">{this.state.bio.content}</p>
                            <br/>
                            <br/>
                        </div>
                    </div>
                </div>
            </section>

            <section id="tags">
                <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h2>Tags</h2>
                        <br/> 
                        <br/>
                        <ul class="list-group list-group-flush">
                            {!this.state.isLoading ? 
                                (this.state.tag.map((t) => {
                                    return(
                                        <tr>
                                            <li class="list-group-item">{t.name}</li>
                                        </tr>
                                    );
                                })) 
                            : (<li class="list-group-item">Loading ... </li>)} 
                    </ul>
                    </div>
                </div>
                </div>
            </section>

            <section id="similar">
                <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                    <h2>Similar artists</h2>
                    <br/>
                    <br/>
                    <ul class="list-group list-group-flush">
                        {!this.isLoading ? 
                            this.state.similarArtists.map(s => {
                                return <li class="list-group-item"> {s.name} </li>
                        }) 
                        : (<li class="list-group-item">Loading...</li>)}
                    </ul>
                    </div>
                </div>
                </div>
            </section>
        </div>
      )
    }
}

 

export default withRouter(Artist);