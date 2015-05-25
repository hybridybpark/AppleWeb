<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<!DOCTYPE>

<html data-ng-app="adminApp">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

<script src="/AppleWeb/Frameworks/angular-1.3.15/angular-route.js"></script>

<script src="/AppleWeb/Frameworks/ui-bootstrap-tpls-0.13.0.min.js"></script>

<!-- AdminPage JavaScript -->
   
<script src="/AppleWeb/js/Admin/Admin.js"></script>

<script src="/AppleWeb/js/Admin/AdminLogin.js"></script>

<script src="/AppleWeb/js/Admin/AdminPage.js"></script>

<script src="/AppleWeb/js/Admin/AdminMember.js"></script>

<script src="/AppleWeb/js/Admin/AdminNeighbor.js"></script>

<script src="/AppleWeb/js/Admin/AdminQnA.js"></script>

<!-- AdminPage css -->

<link href="/AppleWeb/css/Admin/AdminPage.css" rel="stylesheet">

<!-- <script src="/AppleWeb/js/Admin/qna.js"></script> -->

<title>Admin.jsp</title>

</head>

<body class="container" data-ng-controller="adminCtrl">
	<div class="header">
		<h1>관리자 페이지</h1>
	</div>	
	<div data-ng-show="showTabs">
		<ul class="nav navbar-nav navbar-right">
	         <li><a href="/AppleWeb/Apple/"><span class="glyphicon glyphicon-log-in"></span> Main</a></li>
	        <li><a data-ng-click="logout()"><span class="glyphicon glyphicon-log-in"></span> 로그아웃</a></li>
		</ul>
		
		<div>
			<ul class="nav nav-pills nav-justified" >						
			  	<li role="presentation" data-ng-repeat="item in btabs" class="{{item.type}}" data-ng-click="btabClick($index)" ><a href="">{{item.name}}</a></li>		  			  
			</ul>
		</div>
	</div>
	<hr>	
	<div class="container" data-ng-view></div>
	
		
				
				
					
</body>

</html>