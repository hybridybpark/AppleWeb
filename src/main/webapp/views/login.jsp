<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

<!DOCTYPE>

<html data-ng-app="myApp">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<title>login.jsp</title>

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
}
</style>

</head>

<body class="container">
	<div class="header">
		<h1>로그인</h1>
	</div>

	<form class="form-horizontal" name="login">
		<div class="form-group">
			<label class="col-sm-6 control-label">사업자번호:</label>
			<div class="col-sm-6">
				<input type="text" ng-model="num" placeholder="사업자번호">
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-6 control-label">비밀번호:</label>
			<div class="col-sm-6">
				<input type="password" ng-model="pwd" placeholder="비밀번호">
			</div>
		</div>


	<h1>
		<div class="row">
			<div class="col-sm-5"></div>
			<div class="col-sm-4">
				<button class="btn btn-success">
					<span class="glyphicon glyphicon-user"></span>로그인
				</button>
			
				<button class="btn btn-success">
					<span class="glyphicon glyphicon-user"></span>취소
				</button>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</h1>

	</form>

</body>

</html>