import React from 'react';
import { Link } from 'react-router-dom';

const Navigation = () => {
    return (
        <nav>
            <ul>
                <li><Link to="/company">회사소개</Link></li>
                <li><Link to="/company">제품소개</Link></li>
                <li><Link to="/consulting">KGSP컨설팅</Link></li>
            </ul>
        </nav>
    )
}

export default Navigation;