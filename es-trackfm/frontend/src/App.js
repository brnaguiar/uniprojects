import React from 'react';
import './App.css';
import Index from './pages/index';
import Artist from './pages/artist';
import User from './pages/user';
import Error from './pages/error';
import {
  BrowserRouter as Router,
  Switch,
  Route,
} from "react-router-dom";

function App() {
  return (
    <Router>
      <Switch>
      <Route path="/user">
          <User/>
        </Route>
        <Route path="/artist">
          <Artist />
        </Route>
        <Route path="/error">
          <Error/>
        </Route>
        <Route path="/">
          <Index />
        </Route>
        
      </Switch>
  </Router>
  );
}

export default App;



