<hr />
<div id="footer">
	<div class="footer_logo">ShinSungArt&computer communications</div>
	<div>
		<address>135-830 ����Ư���� ������ �������33�� 22 (������) Tel.02-3443-3301</address>
		<p>
		��ǥ�� �ŷ���&nbsp;&nbsp;&nbsp;&nbsp;����ڹ�ȣ 211-86-11343<br/>
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
				<p style="margin-top:45px; letter-spacing:-0.5px;"><strong>�ʿ� �α���</strong> �Ͻø� <strong>�츮����</strong>�� �����Ͻ� �� �ֽ��ϴ�</p>
				<p style="margin-top:18px;">�ű԰��Խ� ȸ������ �� �����ͷ� ���� �ٶ��ϴ�</p>
				<p style="margin-top:5px;text-align:center;">������ &emsp;02-3443-3302</p>
			</div>
			<div style="float:right;width:306px;height:250px;">
				<form name="frmPharmonLogin" id="frmPharmonLogin" method="post" action="https://www.pharmon.co.kr/?a=login2">
				<input type="hidden" name="nextPage" value="<%=nextPage%>" />
				<fieldset class="area_input">
				<div style="margin-top:40px;">
					<label for="tx_id"><img src="../../Images/Common/id.gif" alt="���̵�" /></label>
					<input type="text" name="tx_id" id="tx_id" />
				</div>
				<div style="margin-top:10px;height:32px;">
					<label for="tx_pw"><img src="../../Images/Common/pw.gif" alt="��й�ȣ" /></label>
					<input type="password" name="tx_pw" id="tx_pw" />
				</div>
				</fieldset>
				<fieldset style="margin-top:35px;">
				<input type="image" src="../../Images/Common/pharmon_login.gif" alt="�α���" title="�α���" />
				</fieldset>
				</form>
				<div class="other">
					<a href="http://www.pharmon.co.kr/Login/PharmonJoin0.aspx" style="float:left;" title="ȸ������">ȸ������</a>
					<a href="http://www.pharmon.co.kr/Login/MemberPWFind.aspx" id="btn_findIDPW" style="float:right;" title="���̵�/��й�ȣ ã��">���̵�/��й�ȣ ã��</a>
				</div>
			</div>
			<a id="btn_close" name="btn_close"><img src="../../Images/Common/close.gif" alt="�ݱ�" title="�ݱ�" /></a>
		</div>
	</div>
	-->
	<%
End If
%>