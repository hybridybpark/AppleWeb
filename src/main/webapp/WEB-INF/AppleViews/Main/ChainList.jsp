<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

<title>ChainList.jsp</title>

<script type="text/javascript">

var myApp = angular.module('myApp',[]);

myApp.controller('chainCtrl',function($scope,$http,$location){	
	$scope.url1 = 'http://placehold.it/100&text=지점';
	
	$http.get("../Apple/chain/list.json")
	.success(function (data) {
		$scope.chainlist = data;		
		});
	
	
	//scope.$apply(function() { $location.path("/route"); });	
	$scope.cancelClick = function() {		
		//$location.path("http://localhost:8080/AppleWeb/views/start.jsp");
		window.location="http://localhost:8080/AppleWeb/views/start.jsp";
	};
});
</script>
</head>

<body class="container" data-ng-controller="chainCtrl" style="border: 1px solid blue;">
	<div class="header">
		<br>
		<img alt="StarBucks" src="http://placehold.it/800x150&text=StarBucks">
	</div>
	<h3>매장 찾기</h3>
	<div class="container">
		<ul class="media-list" data-ng-repeat="x in chainlist">
        <li class="media">
            <a href="#" class="pull-left">
                <img src="{{x.image}}" class="media-object" alt="Sample Image" style="width: 200px;height: 200px;">
            </a>
            <div class="media-body">
                <h4 class="media-heading">{{x.name}}</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante.</p>                
                <a href="Menu.jsp">상세정보 보기</a>
            </div>
         </li>         
         </ul>
	</div>
</body>

</html>