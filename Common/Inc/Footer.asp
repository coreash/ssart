<hr />
<div id="footer">
	<div class="footer_logo">ShinSungArt&computer communications</div>
	<div>
		<address>135-830 서울특별시 강남구 봉은사로33길 22 (논현동) Tel.02-3443-3301</address>
		<p>
		대표자 신래균&nbsp;&nbsp;&nbsp;&nbsp;사업자번호 211-86-11343<br/>
		<span style="padding-left:200px;">Copyright &copy; 2014 ShinsungArt&computer. All Rights Reserved.</span></p>
	</div>
</div><!-- //footer -->
<%
Dim pharmonLoginNeed, nextPage
pharmonLoginNeed = Trim(Request("l"))
nextPage = Trim(Request("np"))
If UCase(pharmonLoginNeed) = "OK" Then
	%>
	<!--
	<div id="area_pharmon_wrap">
		<div class="bg">&nbsp;</div>
		<div class="area_login">
			<div class="intro">
				<h1>pharm on</h1>
				<p style="margin-top:45px; letter-spacing:-0.5px;"><strong>팜온 로그인</strong> 하시면 <strong>우리가족</strong>에 접속하실 수 있습니다</p>
				<p style="margin-top:18px;">신규가입시 회원가입 후 고객센터로 문의 바랍니다</p>
				<p style="margin-top:5px;text-align:center;">고객센터 &emsp;02-3443-3302</p>
			</div>
			<div style="float:right;width:306px;height:250px;">
				<form name="frmPharmonLogin" id="frmPharmonLogin" method="post" action="https://www.pharmon.co.kr/?a=login2">
				<input type="hidden" name="nextPage" value="<%=nextPage%>" />
				<fieldset class="area_input">
				<div style="margin-top:40px;">
					<label for="tx_id"><img src="../../Images/Common/id.gif" alt="아이디" /></label>
					<input type="text" name="tx_id" id="tx_id" />
				</div>
				<div style="margin-top:10px;height:32px;">
					<label for="tx_pw"><img src="../../Images/Common/pw.gif" alt="비밀번호" /></label>
					<input type="password" name="tx_pw" id="tx_pw" />
				</div>
				</fieldset>
				<fieldset style="margin-top:35px;">
				<input type="image" src="../../Images/Common/pharmon_login.gif" alt="로그인" title="로그인" />
				</fieldset>
				</form>
				<div class="other">
					<a href="http://www.pharmon.co.kr/Login/PharmonJoin0.aspx" style="float:left;" title="회원가입">회원가입</a>
					<a href="http://www.pharmon.co.kr/Login/MemberPWFind.aspx" id="btn_findIDPW" style="float:right;" title="아이디/비밀번호 찾기">아이디/비밀번호 찾기</a>
				</div>
			</div>
			<a id="btn_close" name="btn_close"><img src="../../Images/Common/close.gif" alt="닫기" title="닫기" /></a>
		</div>
	</div>
	-->
	<%
End If
%>