import React, { Component } from 'react';

class Error extends Component {

    constructor()
    {
        super();
        this.state = {

        }
    }

    componentDidMount ()
    {
    }

    render () 
    {
        return (
            <div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
                    <div class="container">
                    <a role="button" class="btn  btn-light btn-circle btn-sm" aria-pressed="true" href="/">&#x2190;</a>
                    <p> &nbsp; &nbsp;</p>
                    <a class="navbar-brand js-scroll-trigger" href="#page-top" >Track FM</a>
                    
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
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mx-auto">
                            <div class="text-center">
                            <h3> Error.  No artist / user found.</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            </div>
        );
    }


}

export default Error;