<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/jspf/common.jspf"%> --%>

<!DOCTYPE>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<!-- <script src="http://maps.google.com/maps/api/js?sensor=false"></script> -->

<!-- ShopInfo css -->

<link href="/AppleWeb/css/Shop/ShopInfo.css" rel="stylesheet">

</head>

<body data-ng-controller="shopinfoCtrl">

	<header class="container"  style="border: 1px solid red;">
		<img alt="brand" src="/AppleWeb/Images/starbucks.jpg">		
	</header>

	<section>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">			
				<ul class="nav nav-tabs nav-justified">
					<li  data-ng-repeat="item in stabs" class="{{item.type}}" data-ng-click="stabClick($index)"><a href="">{{item.name}}</a></li>					
				</ul>
		</div>
		<div data-ng-include="url"></div>
			
		

		
		
			







	</section>





</body>

</html>