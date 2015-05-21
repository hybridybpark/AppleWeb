<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<!DOCTYPE>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<!-- 	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script> -->
	
<!-- Login JavaScript -->
   
<script src="/AppleWeb/js/Login/login.js"></script>

<!-- Login css -->

<link href="/AppleWeb/css/Login/login.css" rel="stylesheet">

<title>login.jsp</title>

</head>

<body class="container" data-ng-controller="loginCtrl">
	<div class="header">
		<h1 class="text-primary">로그인</h1>
	</div>	
	<hr>
	<section class="container">
		<div class="row">
			<div class="col-sm-6">
				 <form class="form-signin pull-right" style="width: 400px;">		        
				 	<div class="form-group">
				        <label for="inputBusinessNumber">Business Number</label>
				        <input type="text" 
				        	id="inputBusinessNumber" 
				        	class="form-control" 
				        	required autofocus 
				        	data-ng-model="login.businessnumber"
				        	>
			        </div>		        
			        <div class="form-group">
			        	<label for="inputPassword">Password</label>
			        	<input type="password" 
			        		id="inputPassword" 
			        		class="form-control" 
			        		required 
			        		data-ng-model="login.password"
			        		>
			        </div>
			        <div class="checkbox">
			          <label>
			            <input type="checkbox" value="remember-me"> 기억하기
			          </label>
			        </div>
			        <button class="btn btn-primary btn-block" type="button" data-ng-click="doSubmit()">로그인</button>
			        <ul class="nav nav-pills">
			        	<li><a><h5>비밀번호찾기</h5></a></li>
			        	<li><a><h5>회원가입</h5></a></li>
			        </ul>			        
		        </form>			      
			</div>
			<div class="col-sm-6">
				<img src="/AppleWeb/Images/Login/140620_02.jpg"/>
			</div>	
		</div>
	</section>				
	<hr>	
</body>


</html>