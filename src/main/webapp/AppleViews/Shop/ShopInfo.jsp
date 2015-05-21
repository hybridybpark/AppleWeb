<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/jspf/common.jspf"%> --%>

<!DOCTYPE>

<html data-ng-app="ShopInfoApp">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<!-- <link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"> -->
<!-- <link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> -->
<!-- <script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> -->
<!-- <script	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script> -->
<!-- <script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script> -->
	
<!-- <script src="http://maps.google.com/maps/api/js?sensor=false"></script> -->

<!-- <script src="/AppleWeb/Frameworks/angular-1.3.15/angular-route.js"></script> -->
	
<!-- 	ShopInfo js -->

<script src="/AppleWeb/js/Shop/ShopInfo.js"></script>

<!-- ShopInfo css -->

<!-- <link href="/AppleWeb/css/Shop/ShopInfo.css" rel="stylesheet"> -->

</head>

<body data-ng-controller="shopinfoCtrl">

	<header class="container"  style="margin-top: 24px; width: 1024px;">
		
<!-- 		<img alt="brand" src="/AppleWeb/Images/starbucks.jpg"> -->
		<div class="media">
			<div align="center">
				<img class="img-responsive" alt="brand" src="{{titleimage}}" >
			</div>
		</div>				
	</header>
	<br>
	<section class="container" style="width: 1024px;">
					
				<div class="dropdown pull-right">
				  <button class="btn btn-default dropdown-toggle btn-justified" type="button" data-toggle="dropdown">{{selectedShopName}}
				  <span class="caret"></span></button>
				  <ul class="dropdown-menu" >
				    <li data-ng-repeat="a in chainShops">
				    	<a data-ng-click="chainDropdownClick($index)" >{{a.shopname}}</a>
			    	</li>		    
				  </ul>
				</div>			
		
		
	</section>
	<br>	
	<section class="container" style="width: 1024px;">
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">			
				<ul class="nav nav-tabs nav-justified">
					<li  data-ng-repeat="item in stabs" class="{{item.type}}" data-ng-click="stabClick($index)"><a href="">{{item.name}}</a></li>					
				</ul>
		</div>
		<div data-ng-include="url"></div>
	</section>
</body>

</html>