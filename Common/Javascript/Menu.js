//<![CDATA[
var $lnb_a = $('#lnb a');
var $lnb_sub = $('#lnb_sub');	//메뉴레이어
$lnb_sub.show = false;

ClearLnbUnderA = function(){
	for (var i=0,l=$lnb_a.size(); i<l; i++) $($lnb_a[i]).removeClass('on');
}
ControlSubLnb = function(cls){
	$lnb_sub.find('>div >div >.open').removeClass('open');
	$lnb_sub.find('>div >div >.'+ cls).addClass('open');
}
ShowLnbSub = function(){
	var $this = $(this);
	var cls = $this.attr('class');
	ClearLnbUnderA();
	$this.addClass('on');
	$lnb_sub.show = true;
	ControlSubLnb(cls);
	$lnb_sub.stop().animate({height:'170px'},300);
}
HideLnbSub = function(){
	ClearLnbUnderA();
	$lnb_sub.stop().animate({height:'0px'},300,function(){$lnb_sub.show = false;});
}
CheckMousePosition = function(){
	$lnb_sub.show = false;
	setTimeout(function(){
		if (!$lnb_sub.show) HideLnbSub();
	}, 100);
}
KeepShowLnbSub = function(){
	$lnb_sub.show = true;
}

$lnb_a.hover(ShowLnbSub,CheckMousePosition);
$lnb_sub.hover(KeepShowLnbSub,HideLnbSub);



function funcFamilyChange(Me){
        var url = '';
        if($("#infonum").val() != ""){
            switch(Me){
                case 'faa': url = 'http://www.pharmon.co.kr/?c=family&a=qna';        break;
                case 'fab': url = 'http://www.pharmon.co.kr/?c=family&a=qna';        break;
                case 'fac': url = 'http://www.pharmon.co.kr/?c=family&a=qna&s=call'; break;
                case 'fad': url = 'http://www.pharmon.co.kr/?c=family&a=qna&s=faq';  break;
                case 'fba': url = 'http://www.pharmon.co.kr/?c=family&a=soft';       break;
                case 'fbb': url = 'http://www.pharmon.co.kr/?c=family&a=soft';       break;
                case 'fbc': url = 'http://www.pharmon.co.kr/?c=family&a=soft&s=etc'; break;
                case 'fca': url = 'http://www.pharmon.co.kr/?c=family&a=list';       break;
                case 'fda': url = 'http://www.pharmon.co.kr/?c=family&a=notice';     break;
                default   : url = 'http://www.pharmon.co.kr/?c=family';              break;
            }
            location.href(url);
            return;
        }else{
            $("#LoginState").val("OK");
            switch(Me){
                case 'faa': url = 'http://www.pharmon.co.kr/?c=family&a=qna';        break;
                case 'fab': url = 'http://www.pharmon.co.kr/?c=family&a=qna';        break;
                case 'fac': url = 'http://www.pharmon.co.kr/?c=family&a=qna&s=call'; break;
                case 'fad': url = 'http://www.pharmon.co.kr/?c=family&a=qna&s=faq';  break;
                case 'fba': url = 'http://www.pharmon.co.kr/?c=family&a=soft';       break;
                case 'fbb': url = 'http://www.pharmon.co.kr/?c=family&a=soft';       break;
                case 'fbc': url = 'http://www.pharmon.co.kr/?c=family&a=soft&s=etc'; break;
                case 'fca': url = 'http://www.pharmon.co.kr/?c=family&a=list';       break;
                case 'fda': url = 'http://www.pharmon.co.kr/?c=family&a=notice';     break;
                default   : url = 'http://www.pharmon.co.kr/?c=family';              break;
            }
            $("#familyUrl").val(url);
            var vLogin = document.dataForm;
            vLogin.action = location.protocol + "//" + location.host + location.pathname + location.search;
            vLogin.submit();
            return;
        }
}

//]]>