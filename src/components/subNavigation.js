import React from 'react';
import { Link } from 'react-router-dom';

const SubNavigation = ({ match, title }) => {
    return (
        <nav class="lnb">
            <h2>{title}</h2>
            <ul>
                {
                match.path === '/company' ? (
                    <>
                        <li><Link to="/company/ceo">CEO인사말</Link></li>
                        <li><Link to="/company/history">주요연혁</Link></li>
                        <li><Link to="/company/organization">조직구성도</Link></li>
                        <li><Link to="/company/vision">비젼</Link></li>
                        <li><Link to="/company/way">오시는길</Link></li>
                    </>
                ) : 
                match.path === '/product' ? (
                    <>
                        <li><Link to="/product/wos">WOS</Link></li>
                        <li><Link to="/product/erp">ERP</Link></li>
                        <li><Link to="/product/werp">WERP</Link></li>
                        <li><Link to="/product/anysalePlus">애니세일PLUS</Link></li>
                    </>
                ) : null
                }
            </ul>
        </nav>
    );
}

export default SubNavigation;