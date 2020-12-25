import React from 'react';
import { Link } from 'react-router-dom';

const Navigation = () => {
    return (
        <header>
            <div class="mainLogo">
                <Link to="/"><img src="/images/top_logo.png" alt="신성아트컴" /></Link>
            </div>
            <ul class="gnb">
                <li><Link to="/company">회사소개</Link></li>
                <li><Link to="/product">제품소개</Link></li>
                <li><Link to="/consulting">KGSP컨설팅</Link></li>
            </ul>
        </header>
    )
}

export default Navigation;