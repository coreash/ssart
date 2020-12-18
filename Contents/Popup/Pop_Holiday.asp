<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ks_c_5601-1987">

<script language="JavaScript">
<!--
	//팝업창 쿠키 설정
	function setCookie( name, value, expiredays )
	{
		var today = new Date();
		today.setDate( today.getDate() + expiredays );
		document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + today.toGMTString() + ";";
	}

	//팝업창 열지 않기 설정
	function popclose_onclick() {
		if ( document.all.popup.checked ) {
				setCookie( "NewYear2016_ssart", "checked", 1 );
		}
		self.close();
	}

	//이미지 클릭시 이동할 페이지
	function go_page(url) {
		opener.document.location.href=url;
		if (/MSIE/.test(navigator.userAgent)) {
			if(navigator.appVersion.indexOf("MSIE 7.0")>=0) {
				window.open('about:blank','_self').close();
			} else {
				window.opener = self;
				self.close();
			}
		}
	}

	//팝업창 닫기
	function WinClose() {
		if (/MSIE/.test(navigator.userAgent)) {
			if(navigator.appVersion.indexOf("MSIE 7.0")>=0) {
				window.open('about:blank','_self').close();
			} else {
				window.opener = self;
				self.close();
			}
		}
	}

	//팝업창 크기 자동변환
	function autoResizePopup() {
		var winW, winH, sizeToW, sizeToH;

		if ( parseInt(navigator.appVersion) > 3 ) {
			if ( navigator.appName=="Netscape" ) {
					winW = window.innerWidth;
					winH = window.innerHeight;
			}

			if ( navigator.appName.indexOf("Microsoft") != -1 ) {
					winW = document.body.scrollWidth;
					winH = document.body.scrollHeight;
			}
		}

		sizeToW = 0;
		sizeToH = 0;

		if ( winW > 1024 ) { //768은 제한하고자 하는 가로크기
				sizeToW = 1024 - document.body.clientWidth;
		} else if ( Math.abs(document.body.clientWidth - winW ) > 3 ) {
				sizeToW = winW - document.body.clientWidth;
		}

		if ( winH > 768 ) {  //768은 제한하고자 하는 세로크기
				szeToH = 768 - document.body.clientHeight;
		} else if ( Math.abs(document.body.clientHeight - winH) > 4 ) {
				sizeToH = winH - document.body.clientHeight;
		}

		if ( sizeToW != 0 || sizeToH != 0 ) {
				window.resizeBy(sizeToW, sizeToH);
		}
	}
//-->
</script>

<style>
<!--
	td { font-size: 9pt }
-->
</style>
</head>

<body style="Margin:0px;" OnLoad="autoResizePopup();">
<div id="pop_cookie" style="Margin:0px;">
	<form name="form1" ID="Form1" style="Margin:0px;">
	<table cellpadding="0" cellspacing="0" border="0" align="center" bgcolor="#333333" width="100%">
	<tr>
		<td colspan="3"><img src="신성아트컴.jpg" width="470" height="578" border="0"></td>
	</tr>
	<tr>
		<td style="color: #DDDDDD; font-size: 9pt; Padding-Top: 3px" align="center">오늘 하루만 창을 열지 않습니다.</td>
		<td width="50" align="center">
			<input type="checkbox" value="checkbox" name="popup" ID="Checkbox1" onClick="javascript:popclose_onclick();"></td>
		<td>
			<input name="popclose" type="button" value="창닫기" width="50" height="20" onClick="javascript:WinClose();" style="Border: 1px solid #333333; color: 333333; Padding-Top: 2px; Margin-Top: 3px; Margin-Bottom: 3px; Cursor: hand" ID="Button1"></td>
	</tr>
	</table></form>
</div>
</body>

</html>