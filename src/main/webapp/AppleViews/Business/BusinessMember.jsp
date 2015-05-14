<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<!DOCTYPE>

<html data-ng-app="businessApp">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

<!-- Business JavaScript -->
   
<script src="/AppleWeb/js/Business/Business.js"></script>

<!-- Business css -->

<link href="/AppleWeb/css/Business/business.css" rel="stylesheet">

<title>BusinessMember.jsp</title>

</head>

<body class="container" data-ng-controller="businessCtrl">
	<div class="header">
		<h1>사업자 페이지</h1>
	</div>
	<ul class="nav navbar-nav navbar-right">
	         <li><a href="/AppleWeb/Apple/"><span class="glyphicon glyphicon-log-in"></span> Main</a></li>
	        <li><a href="/AppleWeb/Apple/"><span class="glyphicon glyphicon-log-in"></span> 로그아웃</a></li>
	      </ul>
	<div>
		<ul class="nav nav-pills nav-justified" >						
		  	<li role="presentation" data-ng-repeat="item in btabs" class="{{item.type}}" data-ng-click="btabClick($index)" ><a href="">{{item.name}}</a></li>		  			  
		</ul>
	</div>
	<hr>
	<br>
	<div class="container" data-ng-include="url"></div>
		
				
				
					
</body>

</html>