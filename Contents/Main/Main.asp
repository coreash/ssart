<!-- #include file="../../Common/Inc/Base.asp" -->
<script language="javascript" id="clientEventHandlersJS">

	// ***** 쿠키값을 가져오기위한 함수
	function getCookie(name){
		var nameOfCookie = name + "=";
		var x = 0;
		while ( x <= document.cookie.length ){
			var y = (x+nameOfCookie.length);
			if ( document.cookie.substring( x, y ) == nameOfCookie ){
				if ((endOfCookie = document.cookie.indexOf( ";", y )) == -1 ) endOfCookie = document.cookie.length;
				return unescape (document.cookie.substring( y, endOfCookie));
			}
			x = document.cookie.indexOf( " ", x ) + 1;
			if (x == 0) break;
		}
		return;
	}
/*
	//신년팝업
	if (getCookie("NewYear2016_ssart") != "checked" ){
			url = "../PopUp/Pop_NewYear.asp";
			var MainPop = window.open(url,'','left=20,top=0,width=470,height=605');
			MainPop.focus();
	}
	if (getCookie("NewYear2016_ssart") != "checked" ){
			url = "../PopUp/Pop_Holiday.asp";
			var MainPop = window.open(url,'','left=20,top=0,width=470,height=605');
			MainPop.focus();
	}
*/

//-->
</script>

<body>

<div id="wrap">
	<!-- #include file="../../Common/Inc/Header.asp" -->

	<div id="main_content" class="content">
		<div class="area_content">
			<div class="text_main">
				<p>We provide Professional Service <strong>for you</strong></p><p>20여년간의 노하우를 바탕으로 비즈니스 프로세스의 혁신을 이루어 가겠습니다.</p>
			</div>
			<div class="img_main">Shinsung Integration Management System</div>
		</div><!-- //area_content -->
	</div><!-- //content -->
	
	<!-- #include file="../../Common/Inc/Footer.asp" -->
</div><!-- //wrap -->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="../../Common/Javascript/Menu.js"></script>
<script type="text/javascript" src="../../Common/Javascript/Pharmon.js"></script>
</body>
</html>