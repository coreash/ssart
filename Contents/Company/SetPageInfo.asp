<%
Select Case UCase(cate)
	Case "CEO"
		sNavi = "CEO�λ縻"
		imgTitleNavi = "contents_title_com01.png"
		imgHeight = 533
		arySelectedFlag(0) = " show"
	Case "HISTORY"
		sNavi = "�ֿ俬��"
		imgTitleNavi = "contents_title_com02.png"
		imgHeight = 1957
		arySelectedFlag(1) = " show"
	Case "ORG"
		sNavi = "����������"
		imgTitleNavi = "contents_title_com03.png"
		imgHeight = 1060
		arySelectedFlag(2) = " show"
	Case "VISION"
		sNavi = "����"
		imgTitleNavi = "contents_title_com04.png"
		imgHeight = 780
		arySelectedFlag(3) = " show"
	Case "MAP"
		sNavi = "���ô±�"
		imgTitleNavi = "contents_title_com05.png"
		imgHeight = 1429
		arySelectedFlag(4) = " show"
End Select
%>