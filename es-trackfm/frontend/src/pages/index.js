import React, { Component } from 'react';
import { withRouter } from 'react-router-dom';

class Index extends Component
{
    constructor (props)
    {
        super(props);
        this.state = 
        {
            loading : true ,
            artists : [],
            username : null
        }
       
    }

    grabUsername (event)
    {
        this.setState({username: event.target.value});
    }

    componentDidMount () 
    {
        this.setState({ isLoading: true });
        fetch(' http://localhost:8080/artists/')
            .then(response => response.json())
            .then(data => this.setState(
                {
                    artists: data,
                    isLoading: false
                    
                }   
            ));  
        //https://www.robinwieruch.de/react-fetching-data 
         //  this.props.history.push('/posts/');
     
    }

        
    
    handleKeyPress = (event) =>
    {
        if(event.key === 'Enter')
        {
            this.props.history.push('/user?name='+this.state.username);
        }
    
    }

    render ()
    {
        const { artists , isLoading} = this.state;
        console.log(typeof(artists));
        return(
            <div>
                                
                <nav className="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
                    <div className="container">
                    <a className="navbar-brand js-scroll-trigger" href="#page-top">Track FM</a>
                    <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                        <span className="navbar-toggler-icon"></span>
                    </button>
                    <div className="collapse navbar-collapse" id="navbarResponsive">
                        <ul className="navbar-nav ml-auto">
                        <li className="nav-item">
                            <a className="nav-link js-scroll-trigger" href="#artistscharts">Artist Chart</a>
                        </li>
                        </ul>
                    </div>
                    </div>
                </nav>

                <header className="bg-primary text-white">
                    <div className="container text-center">
                    <h1>Track a person</h1>
                    <div className="input-group mb-3" >
                        <div className="input-group-prepend" >
                        <span className="input-group-text" id="basic-addon1">@</span>
                        </div>
                        <input name="usernm" type="text" className="form-control " 
                               placeholder="Username" aria-label="Username" aria-describedby="basic-addon1"
                               value={undefined} // we cant but username here because its null but its an object
                               onChange={this.grabUsername.bind(this)}
                               onKeyPress={this.handleKeyPress}
                        />
                    </div>
                    </div>
                </header>

                <section id="artistscharts">
                    <div className="container">
                    <div className="row">
                        <div className="col-lg-8 mx-auto">
                        <h2 align="center">Global Top 50 Artist Chart</h2>
                        <br/>
                        <br/>
                        <table className="table table-striped">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Name</th>
                                <th scope="col">Playcount</th>
                                <th scope="col">Listeners</th>
                            </tr>
                            </thead>
                            <tbody>

                                { !isLoading ? ( artists.map( (artist, index) => {
                                        return(
                                            <tr>
                                                <th scope="row">{index+1}</th>
                                                <td><a href={"/artist?name="+artist.name}>{artist.name}</a></td>
                                                <td>{parseInt(artist.playcount).toLocaleString(navigator.language, {minimumFractionDigits: 0})}</td>
                                                <td>{parseInt(artist.listeners).toLocaleString(navigator.language, {minimumFractionDigits: 0})}</td>
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

                <footer className="py-5 bg-dark">
                    <div className="container">
                    <p className="m-0 text-center text-white">Copyright &copy; es.labproj.trackfm</p>
                    </div>
                </footer>
            </div>
      )
    }

}

export default withRouter(Index);


