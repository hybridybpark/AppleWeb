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

<body data-role="page">
<header>
<div data-role="header" data-theme="b" data-position="fixed" data-add-back-btn="true">
	
	<h1>Mobile</h1>
		
</div>
</header>
<section>
<div data-role="content">
	<ul data-role="listview" data-filter="true" data-filter-placeholder="Search..." data-filter-theme="b">
		<li data-role="list-divider">A</li>
		<li><a href="">AAAAAA</a></li>
		<li><a href="">AAAAAA</a></li>
		<li data-role="list-divider">B</li>
		<li><a href="">BBBB</a></li>
		<li><a href="">BBBB</a></li>
		<li data-role="list-divider">C</li>
		<li><a href="">CCCC</a></li>
		<li><a href="">CCCC</a></li>
	</ul>
</div>
</section>
</body>

</html>