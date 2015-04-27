<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<!DOCTYPE>

<html data-ng-app="myApp">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

<title>Mobile Home</title>

</head>

<body>
<div data-role="panel" data-display="push" id="panel">
	<h1>Panel</h1>
	<a href="" data-rel="close">Close Panel</a>
	<p>Lorem ipsum dolor sit met.</p>
</div>

<div data-role="header" data-theme="b" data-position="fixed">
	<a href="#panel" data-icon="bars" class="ui-btn-left">Menu</a>
	<h1>Mobile</h1>
	<a href="#" data-icon="search" class="ui-btn-right">예약</a>
	<div data-role="navbar">
			<ul>
				<li><a href="#" data-icon="grid">one</a></li>
				<li><a href="#" data-icon="star">two</a></li>
				<li><a href="#" data-icon="alert">three</a></li>
				<li><a href="#" data-icon="info">four</a></li>
				<li><a href="#" data-icon="gear">five</a></li>
			</ul>
	</div>
	<div data-role="navbar">		
		<select name="category" data-inline="true">
			<option value="all">ALL</option>
			<option value="cafe">CAFE</option>
			<option value="korean">한식</option>
			<option value="chinese">중식</option>
			<option value="western">양식</option>
			<option value="japanese">일식</option>
			<option value="flour">분식</option>			
		</select>	
		<a href="search.jsp" class="ui-btn" data-inline="true">Search</a>			
	</div>
</div>


<div data-role="content">
	<div class="ui-grid-a">
		<div class="ui-block-a"><img alt="Shops" src="http://placehold.it/100&text=Shops"><h3>name</h3></div>
		<div class="ui-block-b"><img alt="Shops" src="http://placehold.it/100&text=Shops"><h3>name</h3></div>
		<div class="ui-block-a"><img alt="Shops" src="http://placehold.it/100&text=Shops"><h3>name</h3></div>
		<div class="ui-block-b"><img alt="Shops" src="http://placehold.it/100&text=Shops"><h3>name</h3></div>
		<div class="ui-block-a"><img alt="Shops" src="http://placehold.it/100&text=Shops"><h3>name</h3></div>
		<div class="ui-block-b"><img alt="Shops" src="http://placehold.it/100&text=Shops"><h3>name</h3></div>
		<div class="ui-block-a"><img alt="Shops" src="http://placehold.it/100&text=Shops"><h3>name</h3></div>
		<div class="ui-block-b"><img alt="Shops" src="http://placehold.it/100&text=Shops"><h3>name</h3></div>
	</div>
</div>


<div data-role="footer"  style="text-align: center;" data-position="fixed">	
	<p>
		<span><a href="">홈</a></span>
		<span><a href="">Login</a></span>
		<span><a href="">회원가입</a></span>		
	</p>
	<p>
		<span><a href="">이용약관</a></span>
		<span><a href="" style="color:#31881d;">개인정보취급방침</a></span>		
		<span><a href="">전체보기</a></span>
		<span><a href="">PC버전</a></span>
	</p>
	<div></div>
	<p>&copy; Apple Project</p>	
</div>

</body>

</html>