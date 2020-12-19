import React from 'react';
import { Link } from 'react-router-dom';
import AppRouter from './router';

const Header = () => {
    return (
        <div>
            <a href="/">Logo</a>
            Header area
            <AppRouter />
        </div>
    );
}

export default Header;