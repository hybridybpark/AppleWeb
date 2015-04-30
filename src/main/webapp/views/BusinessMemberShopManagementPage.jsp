<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<!DOCTYPE>

<html data-ng-app="myApp">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

<title>BusinessMemberShopManagementPage.jsp</title>

<script type="text/javascript">

var myApp = angular.module('myApp',[]);

myApp.controller('businessCtrl',function($scope,$http,$location){	
	
});


</script>

</head>


<body class="container" data-ng-controller="businessCtrl">
	<div class="header">
		<h1>사업자 페이지</h1>
	</div>
	<div>
		<ul class="nav nav-tabs nav-justified">
		  <li role="presentation"><a href="#">예약목록</a></li>
		  <li role="presentation" class="active"><a href="#">상점목록</a></li>
		  <li role="presentation"><a href="#">상점등록</a></li>		  
		  <li role="presentation"><a href="#">상점문의</a></li>	
		</ul>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading"><h4>상점목록</h4></div>
		<ul class="list-group">
			<c:forEach var="item" begin="0" end="3">
			<li class="list-group-item">
				<div class="media">
					<div class="media-left">
						<a href="">
							<img class="media-object" alt="" src="http://placehold.it/100&text=shop">
						</a>
					</div>
					<div class="media-body">
						<h4 class="media-heading">heading</h4>
						content
					</div>
					<div class="media-right">
						<button class="btn btn-default">수정</button>
						<button class="btn btn-default">삭제</button>
					</div>
				</div>
			</li>
			</c:forEach>		
		</ul>			
		<nav style="text-align: center;">
		  <ul class="pagination">
		    <li>
		      <a href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li><a href="#">1</a></li>
		    <li><a href="#">2</a></li>
		    <li><a href="#">3</a></li>
		    <li><a href="#">4</a></li>
		    <li><a href="#">5</a></li>
		    <li>
		      <a href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
	</div>	
</body>

</html>