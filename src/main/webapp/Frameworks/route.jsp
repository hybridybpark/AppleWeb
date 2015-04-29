<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>template.jsp</title>
<link rel="stylesheet" href="bootstrap-3.3.4/css/bootstrap.min.css">

<c:url var="jquery" value="/jquery"/>
<c:url var="bootstrap" value="/bootstrap-3.3.4-dist"/>
<c:url var="angular" value="/angular-1.3.15"/>

<script type="text/javascript" src="${jquery}/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="${bootstrap}/js/bootstrap.min.js"></script>

<script type="text/javascript" src="${angular}/angular.min.js"></script>
<script type="text/javascript" src="${angular}/angular-sanitize.min.js"></script>
<script type="text/javascript" src="${angular}/angular-animate.min.js"></script>
<script type="text/javascript" src="${angular}/angular-route.min.js"></script>

<script type="text/javascript">
	var app = angular.module("myApp",["ngSanitize", "ngAnimate","ngRoute"]);
	app.config(function($routeProvider) {
		
		var emp = {
				templateUrl : 'emp.jsp',
				controller : empController
		};
		
		var city = {
				templateUrl : 'city.jsp',
				controller : cityController
		};
		
		$routeProvider.when('/emp', emp);
		$routeProvider.when('/city', city);
		$routeProvider.otherwise({redirectTo: '/emp'});
	});
	
	app.controller("myController",function($scope){
		alert("myController");
	});
	
	app.controller("empController",function($scope){
		alert("empController");
	});
	
	app.controller("cityController",function($scope){
		alert("cityController");
	
	
</script>

</head>

<body data-ng-controller = "myController">
<div class="container">
	<a href="#emp" class="btn">emp list</a>
	<a href="#city" class="btn btn-primary">city list</a>
	<hr>
	<ng-view>
	</ng-view>
</div>

</body>
</html>