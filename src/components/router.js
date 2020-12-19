import React from 'react';
import { HashRouter as Router, Redirect, Route, Switch} from 'react-router-dom';
import Navigation from './navigation';
import Main from '../routes/main';
import Company from '../routes/company';
import Product from '../routes/product';
import Consulting from '../routes/consulting';

const AppRouter = () => {
    return (
        <Router>
            <Navigation />
            <Switch>
                <Route exact path="/">
                    <Main />
                </Route>
                <Route exact path="/company">
                    <Company />
                </Route>
                <Route exact path="/product">
                    <Product />
                </Route>
                <Route exact path="/consulting">
                    <Consulting />
                </Route>
                <Redirect from="*" to="/"></Redirect>
            </Switch>
        </Router>
    );
}

export default AppRouter;