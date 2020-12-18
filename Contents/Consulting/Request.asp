<%
Dim sNavi, imgTitleNavi, imgHeight
Dim arySelectedFlag(4)

cate = Trim(Request("c"))
If cate = "" Then cate = "kgsp"

%>
<!-- #include file="./SetPageInfo.asp" -->