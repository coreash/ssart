import React from 'react';
import { Route, Redirect } from 'react-router-dom';
import SubNavigation from '../components/subNavigation';
import Ceo from '../routes/company/ceo';
import History from '../routes/company/history';
import Organization from '../routes/company/organization';
import Vision from '../routes/company/vision';
import Way from '../routes/company/way';
import Wos from '../routes/product/wos';
import Erp from '../routes/product/erp';
import Werp from '../routes/product/werp';
import AnysalePlus from '../routes/product/anysalePlus';
import Kgsp from '../routes/consulting/kgsp';

const GetTitleName = (path) => {
    return path === 'company' ? '회사소개' : path === 'product' ? '제품소개' : 'KGSP컨설팅';
}
const SubRouter = ({match}) => {
    return (
        <div class="content">
            <SubNavigation match={match} title={GetTitleName(match.path.replace('/',''))} />
            <div class="subcontent">
                {
                    match.path === '/company' ? (
                        <>
                            <Route exact path="/company" component={Ceo} />
                            <Route exact path="/company/ceo" component={Ceo} />
                            <Route exact path="/company/history" component={History} />
                            <Route exact path="/company/organization" component={Organization} />
                            <Route exact path="/company/vision" component={Vision} />
                            <Route exact path="/company/way" component={Way} />
                            <Redirect from ="/company" to="/company/ceo" />
                        </>
                    ) : 
                    match.path === '/product' ? (
                        <>
                            <Route exact path="/product" component={Wos} />
                            <Route exact path="/product/wos" component={Wos} />
                            <Route exact path="/product/erp" component={Erp} />
                            <Route exact path="/product/werp" component={Werp} />
                            <Route exact path="/product/anysalePlus" component={AnysalePlus} />
                            <Redirect from ="/product" to="/product/wos" />
                        </>
                    ) : <Kgsp />
                }
            </div>
            
        </div>
    )
}

export default SubRouter;