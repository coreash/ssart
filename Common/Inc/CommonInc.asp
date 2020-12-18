<%@ CodePage=949 EnableSessionState=TRUE LANGUAGE="VBSCRIPT" %>
<!-- METADATA TYPE="typelib" NAME="ADODB Type Library" FILE="C:\Program Files\Common Files\SYSTEM\ADO\msado15.dll" -->
<%
Option Explicit
Response.Expires = -1
Response.Expiresabsolute = Now()-1
Response.AddHeader "pragma","no-cache"
Response.AddHeader "cache-control","private"
Response.CacheControl="no-cache"
Response.CharSet = "euc-kr"
Response.ContentType = "text/html"

Dim pathInfo, aryPath, strCurrFolder, cate, subCate

pathInfo = Request.ServerVariables("PATH_INFO")
aryPath = Split(pathInfo,"/")
strCurrFolder = aryPath(UBound(aryPath)-1)

If Request.ServerVariables("HTTPS") = "off" Then
	%>
	<script type="text/javascript">location.href = 'https://www.ssart.co.kr/Contents/Main/Main.asp';</script>
	<%
	Response.End
End If

%>