import React from 'react';
import { HashRouter as Router, Redirect, Route, Switch} from 'react-router-dom';
import Navigation from './navigation';
import Main from '../routes/main';
import SubRouter from '../components/subRouter';

const AppRouter = () => {
    return (
        <Router>
            <Navigation />
            <Switch>
                <Route exact path="/">
                    <Main />
                </Route>
                <Route path="/company" component={SubRouter} />
                <Route path="/product" component={SubRouter} />
                <Route path="/consulting" component={SubRouter} />
                <Redirect from="*" to="/"></Redirect>
            </Switch>
        </Router>
    );
}

export default AppRouter;