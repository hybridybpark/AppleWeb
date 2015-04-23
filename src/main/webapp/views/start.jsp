<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/common.jspf" %>

<!DOCTYPE>

<html data-ng-app="myApp">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<script type="text/javascript">

var myApp = angular.module('myApp',["ngAnimate","ngSanitize"]);

myApp.controller('startController',function($scope,$http){	
	$scope.url = 'http://placehold.it/320x180';
	$scope.shops = shops=[
	{name:'shop1',image:$scope.url},
	{name:'shop2',image:$scope.url},
	{name:'shop3',image:$scope.url},
	{name:'shop4',image:$scope.url},
	{name:'shop5',image:$scope.url},
	{name:'shop6',image:$scope.url},
	{name:'shop7',image:$scope.url},
	{name:'shop8',image:$scope.url},
	{name:'shop9',image:$scope.url},
	{name:'shop10',image:$scope.url},
	{name:'shop11',image:$scope.url},
	{name:'shop12',image:$scope.url},
	{name:'shop13',image:$scope.url},
	{name:'shop14',image:$scope.url},
	{name:'shop15',image:$scope.url},
	{name:'shop16',image:$scope.url}];
	
	$scope.imageClick = function(index) {
		alert(index+"");		
	};
	
});

</script>

<style type="text/css">

.nav .navbar-nav .navbar-inline{
	position: absolute;	
	text-align: center;
	margin: auto;	
}

</style>

<title>start.jsp</title>

</head>

<body data-ng-controller="startController">
	<header class="container">
	 <nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#">WebSiteName</a>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">    		
	      <ul class="nav navbar-nav navbar-inline">	      	 
	      	<li><input type="text" class="form-control" placeholder="주소를 입력하세요" size="80"></li>
	      	<li><button type="submit" class="btn btn-default navbar-btn">찾기</button></li>
		  </ul>		      	
		  <ul class="nav navbar-nav navbar-right">
	        <li><a href="#"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
	        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
	      </ul>      
	    </div>
	  </div>
	</nav>
	</header>
	<section class="container">
	<div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">        
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <p>Category</p>
    </button>    
	</div>
	
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav nav-tabs nav-justified">
			<li class="active"><a href="#1">ALL</a></li>
			<li><a href="#2">CAFE</a></li>
			<li><a href="#3">한식</a></li>
			<li><a href="#4">중식</a></li>
			<li><a href="#5">양식</a></li>
			<li><a href="#6">일식</a></li>
			<li><a href="#7">분식</a></li>
			<li><a href="#8">Q n A</a></li>
		</ul>
		</div>

		<div>
			<div class="row">
			  <div class="col-xs-6 col-md-3" data-ng-repeat="x in shops">
			    <div class="thumbnail">
			      <img src="{{x.image}}" alt="..." data-ng-click="imageClick($index)">			     
			    </div>
			  </div>			 
			</div>
		</div>
	</section>
</body>

</html>