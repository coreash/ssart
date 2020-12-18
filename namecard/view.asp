<%
	set objconn = server.CreateObject("adodb.connection")
'	str = "Provider=SQLOLEDB.1;Password=gw *tnrgml ?;Persist Security Info=false;User ID=ssart20070112;Initial Catalog=SSGS; Data Source=218.38.6.55,9025"
	str = "Provider=SQLOLEDB.1;Password=gw *tnrgml ?;Persist Security Info=false;User ID=ssart20070112;Initial Catalog=SSGS; Data Source=sg.ssart.co.kr,9025"
	objconn.ConnectionString = str
	objconn.Open

	strUrl = Request.ServerVariables("QUERY_STRING")

	aryurl = Split(strUrl, "/")
	strID = aryurl(UBound(aryurl))

	'woslogin 데모페이지일경우
	if lcase(trim(strID)) = "woslogin" then
		Response.Redirect "../WosLoginSample/index.html"
	end if

	If strID <> "" Then
		sql =        " SELECT SGB60.GB60_Num,  SGB60.GB60_User_Name, " _
			& vbCrLf & "        MenGrade.GB01_Code_Name, " _
			& vbCrLf & "        SGB60.GB60_Cellular_Tel, Rtrim(SGB60.GB60_Office_Tel), " _
			& vbCrLf & "        SGB60.GB60_EXTENSION_TEL, SGB10.GB10_ORG_NAME, SGB60.GB60_E_Mail1 "

		sql = sql &   "   FROM SGB60 " _
			& vbCrLf & "   LEFT OUTER JOIN SGB01 MenGrade ON (SGB60.GB60_GB01_Num_Grade = MenGrade.GB01_NUM) " _
			& vbCrLf & "                                      AND ('5' = MenGrade.GB01_GB00_NUM) " _
      & vbCrLf & "   LEFT OUTER JOIN SGB10 ON SGB60.GB60_GB10_NUM = SGB10.GB10_NUM " _
			& vbCrLf & "  WHERE GB60_Member_Kind = 'A' and (SGB60.GB60_ID='" & strID & "')"

		set rs = objconn.execute(sql)

    if not rs.eof then
        aryList = rs.getrows()
        CountList = ubound(aryList,2)
    else
        CountList = -1
    end if
    rs.close
    set rs = nothing

	End If

	If CLng(CountList) > -1 Then
		strPhone = aryList(3,0)
		If Left(aryList(4,0), 3) = "010" Then
			strPhone = aryList(4,0)
		End If
	Else
		objconn.close
		set objconn = nothing
		response.End
	End If

	strName = ""

	For i=1 To Len(Trim(aryList(1,0)))
		strName = strName & Mid(aryList(1,0), i, 1) & "&nbsp; &nbsp;"
	Next

objconn.close
set objconn = nothing



%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ks_c_5601-1987">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />

<title>(주)신성아트컴</title>
<script language="javascript">
<!--

//-->
</script>

</head>
<!--
background="../namecard/back.jpg"
//-->
<body topmargin="0" leftmargin="0" width="320">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
	<tr>
		<td width="30" height="30"></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td width="30"></td>
		<td colspan="2" height="30">
			<img src="../namecard/shinlogo.png" width="247" height="46">
		</td>
	</tr>
	<tr>
		<td height="10"></td>
		<td></td>
	</tr>
	<tr>
		<td width="30"></td>
		<td width="265"><font color="0070b1"><b><%=aryList(6,0)%>&nbsp;/&nbsp;<%=aryList(2,0)%></b></font></td>
	</tr>
	<tr>
		<td width="30"></td>
		<td width="265" style="FONT-FAMILY:gulim;"><font size="6"><%=strName%></font></td>
	</tr>
	<tr>
		<td height="6"></td>
		<td></td>
	</tr>
	<tr>
		<td width="30"></td>
		<td height="1" bgcolor="EEEEEE"></td>
	</tr>
	<tr>
		<td height="10"></td>
		<td></td>
	</tr>
	<tr>
		<td width="30"></td>
		<td width="265">TEL. 02-3443-3301 <%
		If Len(Trim(aryList(5,0))) > 0 Then
			response.write "(내선:" & aryList(5,0) & ")"
		End if
		%></td>
	</tr>
	<tr>
		<td width="30"></td>
		<td width="265">FAX. 02-3443-3305</td>
	</tr>
	<tr>
		<td width="30"></td>
		<td width="265">Mobile. <%=strPhone%></td>
	</tr>
	<%If Len(Trim(aryList(7,0))) > 0 Then%>
	<tr>
		<td width="30"></td>
		<td width="265">E-mail. <%=aryList(7,0)%></td>
	</tr>
	<%End If%>
	<tr>
		<td height="10"></td>
		<td></td>
	</tr>
	<tr>
		<td width="30"></td>
		<td colspan="2">
			<table border="0" width="100%">
				<tr>
					<td width="100"><a href="http://www.pharmon.co.kr"><img src="../namecard/pharmon.jpg" height="25"></a></td>
					<td width="100"><a href="http://www.ssart.co.kr"><img src="../namecard/ezsale.jpg" height="20"></a></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td align="center"></td>
		<td width="265"></td>
	</tr>
</table>
<table border="0" cellspacing="0" width="100%">
<tr><td height="20"></td></tr>
<tr>
	<td width="31"></td>
</tr>
</table>
</body>
</html>
