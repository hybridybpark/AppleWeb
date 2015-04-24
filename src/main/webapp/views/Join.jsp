<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf" %> --%>
<!DOCTYPE>
<html data-ng-app="myApp">

<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
  
<title>회원 가입</title>

<script type="text/javascript">
var myApp = angular.module('myApp',[]);

myApp.controller('userCtrl',function($scope,$http,$location){	
	
	//scope.$apply(function() { $location.path("/route"); });	
	$scope.cancelClick = function() {		
		//$location.path("http://localhost:8080/AppleWeb/views/start.jsp");
		window.location="http://localhost:8080/AppleWeb/views/start.jsp";
	};
});
</script>
</head>

<body data-ng-controller="userCtrl">
<div class="container">
<h1>신규 회원 가입</h1>

<hr>

<form class="form-horizontal" role="form">
	<div class="form-group">
		<label class="col-sm-2 control-label">사업자명 :</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" data-ng-model="bussinessName" placeholder="사업자명">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">사업자번호 :</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" data-ng-model="bussinessNumber" placeholder="사업자번호">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">연락처 :</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" data-ng-model="phoneNumber" placeholder="연락처">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">비밀번호 :</label>
		<div class="col-sm-10">
			<input type="password" class="form-control" data-ng-model="passw1" placeholder="비밀번호">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">비밀번호확인:</label>
		<div class="col-sm-10">
			<input type="password" class="form-control" data-ng-model="passw2" placeholder="비밀번호확인">
		</div>
	</div>
	<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
    	<div class="btn-group">
     	<button type="submit" class="btn btn-primary" data-ng-click="submitClick()">
			<span class="glyphicon glyphicon-user"></span>가입 요청
		</button>
		<button type="button" class="btn btn-primary" data-ng-click="cancelClick()">
			<span class="glyphicon glyphicon-user"></span> 취소
		</button>		
		</div>		
    </div>
  	</div>	
</form>	
		
	
<hr>

</div>
</body>
</html>