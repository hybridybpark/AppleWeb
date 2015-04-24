<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf" %> --%>

<!DOCTYPE>

<html data-ng-app="myApp">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script type="text/javascript">

var myApp = angular.module('myApp',[]);

myApp.controller('startController',function($scope,$http,$location){	
	$scope.url1 = 'http://placehold.it/320x180';
	$scope.shops = shops=[
	{name:'shop1',image:$scope.url1},
	{name:'shop2',image:$scope.url1},
	{name:'shop3',image:$scope.url1},
	{name:'shop4',image:$scope.url1},
	{name:'shop5',image:$scope.url1},
	{name:'shop6',image:$scope.url1},
	{name:'shop7',image:$scope.url1},
	{name:'shop8',image:$scope.url1}
	];
	
	$scope.imageClick = function(index) {
		alert(index+"");		
	};
	
	$scope.url2 = "ShopList.jsp";
	
	$scope.tabs = tabs = [
	{num:0,name:'ALL',type:'',address:'ALL.jsp'},
	{num:1,name:'CAFE',type:'',address:'CAFE.jsp'},
	{num:2,name:'한식',type:'',address:'KOREANFOOD.jsp'},
	{num:3,name:'중식',type:'',address:'CHINESEFOOD.jsp'},
	{num:4,name:'양식',type:'',address:'WESTERNFOOD.jsp'},
	{num:5,name:'일식',type:'',address:'JAPANESEFOOD.jsp'},
	{num:6,name:'분식',type:'',address:'FLOURFOOD.jsp'},
	{num:7,name:'Q&A',type:'',address:'QnA.jsp'}];
	
	$scope.tabClick = function(index) {		
		for(var i=0;i<8;i++){
			if(i==index){
				tabs[i].type = "active";
			}else{
				tabs[i].type = "";
			}
		}
		if(index==7){
			$scope.url2 = "QnA.jsp";
		}else{
			$scope.url2 = "ShopList.jsp";		
		}
	};
	
	$http.get("http://www.w3schools.com/angular/customers.php")
	 .success(function (response) {$scope.names = response.records;});
	
	$scope.itemClick = function(index) {
		$scope.message = "Number : "+(index+1)+ " Name : "+$scope.names[index].Name
										      + " Country : "+$scope.names[index].Country;
//											  + " Date : "+$scope.;
//											  &tc='+new Date().getTime();
		alert($scope.names[index].Name+" clicked");
		alert($scope.message);
	};
   $scope.myVar = -1;
   $scope.toggle = function(index) {
   	if($scope.myVar != index){
       	$scope.myVar = index;
   	}else{
   		$scope.myVar = -1;		
   	}
   };
	
   $scope.cancelClick = function() {
	   alert("cancel");
		$scope.$apply(function() { $location.path("http://localhost:8080/AppleWeb/views/start.jsp"); });		
		location.replace("http://localhost:8080/AppleWeb/views/start.jsp");
	};
});

</script>
<style type="text/css">
body { padding-top: 70px; }
#search 
	{
	width: 80%;
	border: 1px solid red;
	}
</style>
<title>start.jsp</title>

</head>

<body data-ng-controller="startController">
	<header class="container">
	 <nav class="navbar navbar-fixed-top">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="start.jsp">WebSiteName</a>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">    		
	      <form class="navbar-form navbar-left" role="search">
	        <div class="form-group">
	          <input id="search" type="text" class="form-control" placeholder="주소를 입력해주세요.">
	        </div>
	        <button type="submit" class="btn btn-default">찾기</button>
      	</form>	      	
		  <ul class="nav navbar-nav navbar-right">
	        <li><a href="Join.jsp"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
	        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
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
				<li data-ng-repeat="tab in tabs" class="{{tab.type}}" data-ng-click="tabClick($index)"><a href="">{{tab.name}}</a></li>			
			</ul>
		</div>
		<div class="container">			
			<div data-ng-include="url2"></div>
		</div>		
	</section>
	<footer>
	<div>
                <p class="text-center">
                    <small><strong> Apple</strong></small><br>
                    <small>대표 : Apple(주) ㆍ 주소 :  이대역 ㆍ 사업자등록번호:123-12-12345 ㆍ 전화 : 064-123-1234</small><br>
                    <small>Copyrightⓒ All rights reserved.</small>
                </p>
            </div>
	</footer>
</body>

</html>