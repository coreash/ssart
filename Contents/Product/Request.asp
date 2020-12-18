<%
Dim sNavi, imgTitleNavi, imgHeight
Dim arySelectedFlag(4)
Dim arySelectedSub(4)

cate = Trim(Request("c"))
subCate = Trim(Request("sc"))
If cate = "" Then cate = "sims_wos"
If subCate = "" Then subCate = "werp"

%>
<!-- #include file="./SetPageInfo.asp" -->