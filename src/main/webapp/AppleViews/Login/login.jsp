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
		<h1 class="text-primary"></h1>
	</div>
	<div class="row">
			<div class="col-sm-offset-1 col-sm-10">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
				<tr>
					<td valign="bottom" style="padding:0 0 2px 0;"><img src="/AppleWeb/Images/Login/title_login.gif" style="margin:0 15px 0 0;">서비스 이용을 위해 로그인 해주세요.</td>
					<td width="110" align="right" valign="bottom" class="text11" ><a href="http://localhost:8080/AppleWeb/Apple/admin">관리자</a></td>
				</tr>
			</table>
			</div>	
		</div>
			
	
	<section class="container">
	<div class="row">
			<div class="col-sm-offset-1 col-sm-10">
				<hr>
			</div>	
		</div>
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
		<div class="row">
			<div class="col-sm-offset-1 col-sm-10">
				<hr>
			</div>	
		</div>
		
	</section>				
		
</body>


</html>