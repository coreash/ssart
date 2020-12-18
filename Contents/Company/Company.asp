<!-- #include file="../../Common/Inc/Base.asp" -->
<body>
<!-- #include file="./Request.asp" -->
<div id="wrap">
	<!-- #include file="../../Common/Inc/Header.asp" -->

	<div id="sub_content" class="content">
		<!-- #include file="../../Common/Inc/Nav_Left.asp" -->
		<div id="area_content">
			<p class="para_nav"><img src="../../Images/Icon/navigation_icon.png" alt="" /> &nbsp;home &gt; 회사소개 &gt; <strong><%=sNavi%></strong></p>
			<div class="section">
				<h3><img src="../../Images/Content/<%=imgTitleNavi%>" alt="<%=sNavi%>" /></h3>
				<div class="article <%=cate%>">
					<!-- #include file="./Content.asp" -->
				</div>
			</div><!-- //section -->
		</div><!-- //area_content -->
	</div><!-- //content -->
	
	<!-- #include file="../../Common/Inc/Footer.asp" -->
</div><!-- //wrap -->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="../../Common/Javascript/Menu.js"></script>
<script type="text/javascript" src="../../Common/Javascript/Quick.js"></script>
<script type="text/javascript" src="../../Common/Javascript/Pharmon.js"></script>
</body>
</html>