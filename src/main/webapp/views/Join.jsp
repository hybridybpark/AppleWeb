<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<body ng-app="myApp" ng-controller="userCtrl">

<html>

<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>

<style>

h1{

    text-align: center;
}
 
</style>

<h1>신규 회원 가입</h1>

<hr>

<form class="form-horizontal">
	<div class="form-group">
		<label class="col-sm-6 control-label">사업자명 :</label>
		<div class="col-sm-6">
			<input type="text" ng-model="bussinessName" placeholder="사업자명">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-6 control-label">사업자번호 :</label>
		<div class="col-sm-6">
			<input type="text" ng-model="bussinessNumber" placeholder="사업자번호">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-6 control-label">연락처 :</label>
		<div class="col-sm-6">
			<input type="text" ng-model="phoneNumber" placeholder="연락처">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-6 control-label">비밀번호 :</label>
		<div class="col-sm-6">
			<input type="password" ng-model="passw1" placeholder="비밀번호">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-6 control-label">비밀번호확인:</label>
		<div class="col-sm-6">
			<input type="password" ng-model="passw2" placeholder="비밀번호확인">
		</div>
	</div>
	
</form>

<h1>
		<button class="btn btn-primary" >
			<span class="glyphicon glyphicon-user"></span>가입 요청
		</button>
		
		<button class="btn btn-primary" >
			<span class="glyphicon glyphicon-user"></span> 취소
		</button>
</h1>
<hr>

</body>
</html>