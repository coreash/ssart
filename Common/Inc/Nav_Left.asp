<div id="area_nav_left" style="height:<%=(imgHeight + 102)%>px;">
	<%
	If UCase(strCurrFolder) = "COMPANY" Then
		%>
		<h2 class="company">회사소개</h2>
		<hr class="ln_left" />
		<ul id="nav_left">
			<li><a href="../../Contents/Company/Company.asp?c=ceo" class="ceo<%=arySelectedFlag(0)%>">CEO인사말</a></li>
			<li><a href="../../Contents/Company/Company.asp?c=history" class="history<%=arySelectedFlag(1)%>">주요연혁</a></li>
			<li><a href="../../Contents/Company/Company.asp?c=org" class="organization<%=arySelectedFlag(2)%>">조직구성도</a></li>
			<li><a href="../../Contents/Company/Company.asp?c=vision" class="vision<%=arySelectedFlag(3)%>">비젼</a></li>
			<li><a href="../../Contents/Company/Company.asp?c=map" class="map<%=arySelectedFlag(4)%>">오시는길</a></li>
		</ul>
		<%
	ElseIf UCase(strCurrFolder) = "PRODUCT" Then
		%>
		<h2 class="product">제품소개</h2>
		<hr class="ln_left" />
		<ul id="nav_left">
			<li><a href="../../Contents/Product/Product.asp?c=sims_wos" class="sims_wos<%=arySelectedFlag(0)%>">SIMS_WOS</a></li>
			<li><a href="../../Contents/Product/Product.asp?c=sims_erp" class="sims_erp<%=arySelectedFlag(1)%>">SIMS_ERP</a></li>
			<li><a href="../../Contents/Product/Product.asp?c=sims_werp" class="sims_werp<%=arySelectedFlag(2)%>">SIMS_WERP</a></li>
			<li><a href="../../Contents/Product/Product.asp?c=anysale_plus" class="anysale_plus<%=arySelectedFlag(3)%>">애니세일플러스</a></li>
		</ul>
		<%
	ElseIf UCase(strCurrFolder) = "CONSULTING" Then
		%>
		<h2 class="consulting">KGSP컨설팅</h2>
		<hr class="ln_left" />
		<%	
	End If
	%>
</div><!-- //nav_left -->