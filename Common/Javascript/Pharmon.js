//<![CDATA[
var pharmonWrap = $('#area_pharmon_wrap');
var Pharmon = {
	div_wrap : pharmonWrap,
	btn_findIDPW : pharmonWrap.find('#btn_findIDPW'),
	btn_close : pharmonWrap.find('#btn_close'),
	form : pharmonWrap.find('#frmPharmonLogin'),
	tx_id : pharmonWrap.find('#tx_id'),
	tx_pw : pharmonWrap.find('#tx_pw'),
	CheckPharmonIDPW : function(e){
		e.preventDefault();
		var left = Math.ceil((window.screen.width - 300) / 2);
		var top = Math.ceil((window.screen.height - 230) / 2);
		window.open($(this).attr('href'), 'IDPW', 'width=300,height=230,left='+ left +',top='+ top +',scrollbars=no');
	},
	KillMySelf : function(){
		Pharmon.div_wrap.remove();
		$("#LoginState").val("");
	},
	CheckForm : function(){
		if (Pharmon.tx_id.val() == ''){
			alert('아이디를 입력하세요');
			Pharmon.tx_id.focus();
			return false;
		}
		if (Pharmon.tx_pw.val() == ''){
			alert('비밀번호를 입력하세요');
			Pharmon.tx_pw.focus();
			return false;
		}
		return true;
	}
};

Pharmon.btn_findIDPW.on('click',Pharmon.CheckPharmonIDPW);
Pharmon.btn_close.on('click',Pharmon.KillMySelf);
pharmonWrap.find('.bg').css('opacity','0.5');
Pharmon.tx_id.focus();
Pharmon.form.on('submit',Pharmon.CheckForm);

//]]>