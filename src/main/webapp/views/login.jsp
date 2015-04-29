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

<title>login.jsp</title>

<script type="text/javascript">

var myApp = angular.module('myApp',[]);

myApp.controller('loginCtrl',function($scope,$http,$location){	
	
	//scope.$apply(function() { $location.path("/route"); });
	$scope.loginClick = function() {		
		//$location.path("http://localhost:8080/AppleWeb/views/start.jsp");
		window.localStorage.setItem("MEMBERID", $scope.num);
		window.location="http://localhost:8080/AppleWeb/views/start.jsp";
	};
	$scope.cancelClick = function() {		
		//$location.path("http://localhost:8080/AppleWeb/views/start.jsp");
		window.location="http://localhost:8080/AppleWeb/views/start.jsp";
	};	
});
</script>
<style type="text/css">
.header {
	margin-top: 50px;
	text-align: center;
}

.form-horizontal {
	margin-top: 100px;
}

h1{
	margin-top: 100px;
	text-align: center;	
}
</style>

</head>

<body class="container" data-ng-controller="loginCtrl">
	<div class="header">
		<h1>로그인</h1>
	</div>
	<div class="container">
	<form class="form-horizontal" name="login">
		<div class="form-group">
			<label class="col-sm-6 control-label">사업자번호:</label>
			<div class="col-sm-3">
				<input type="text" data-ng-model="num" placeholder="사업자번호">
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-6 control-label">비밀번호:</label>
			<div class="col-sm-3">
				<input type="password" data-ng-model="pwd" placeholder="비밀번호">
			</div>
		</div>	
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
			<div class="btn-group" role="group">			
				<button class="btn btn-success" data-ng-click="loginClick()">
					<span class="glyphicon glyphicon-user"></span>로그인
				</button>
				<button class="btn btn-success" data-ng-click="cancelClick()">
					<span class="glyphicon glyphicon-user"></span>취소
				</button>
			</div>
			<div class="col-sm-4">				
			</div>			
		</div>
	

	</form>
	</div>
</body>

</html>