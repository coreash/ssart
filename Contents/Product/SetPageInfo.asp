<%
Select Case UCase(cate)
	Case "SIMS_WOS"
		sNavi = "SIMS_WOS"
		imgTitleNavi = "contents_title_wos.png"
		imgHeight = 823
		arySelectedFlag(0) = " show"
	Case "SIMS_ERP"
		sNavi = "SIMS_ERP"
		imgTitleNavi = "contents_title_erp.png"
		imgHeight = 5414
		arySelectedFlag(1) = " show"
	Case "SIMS_WERP"
		sNavi = "SIMS_WERP"
		imgTitleNavi = "contents_title_werp.png"
		arySelectedFlag(2) = " show"
		If subCate = "werp" Then
			arySelectedSub(0) = " show"
			imgHeight = 3979
		ElseIf subCate = "sales" Then
			arySelectedSub(1) = " show"
			imgHeight = 1727
		ElseIf subCate = "purchase" Then
			arySelectedSub(2) = " show"
			imgHeight = 1721
		ElseIf subCate = "account" Then
			arySelectedSub(3) = " show"
			imgHeight = 1732
		ElseIf subCate = "wms" Then
			arySelectedSub(4) = " show"
			imgHeight = 1821
		End If
'	Case "SIMS_WMS"
'		sNavi = "SIMS_WMS"
'		imgTitleNavi = "contents_title_wms.png"
'		imgHeight = 1442
'		arySelectedFlag(3) = " show"
	Case "ANYSALE_PLUS"
		sNavi = "애니세일플러스"
		imgTitleNavi = "contents_title_anysales.png"
		imgHeight = 6603
		arySelectedFlag(3) = " show"
End Select
%>