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

<title>BusinessMemberInquiryPage.jsp</title>

<script type="text/javascript">

var myApp = angular.module('myApp',[]);

myApp.controller('inquiryCtrl',function($scope,$http,$location){	
	
	$scope.inquiry = [1,2,3,4,5,6,7,8];
	
	$scope.myVar = -1;
    $scope.toggle = function(index) {
    	if($scope.myVar != index){
        	$scope.myVar = index;
    	}else{
    		$scope.myVar = -1;		
    	}
    };
	
});

</script>
<style type="text/css">

th{
	text-align: center;
}
td{
	text-align: center;
}

</style>
</head>

<body class="container" data-ng-controller="inquiryCtrl">
	<div class="header">
		<h1>사업자 페이지</h1>
	</div>
	<div>
		<ul class="nav nav-tabs nav-justified">
		  <li role="presentation"><a href="#">예약목록</a></li>
		  <li role="presentation"><a href="#">상점목록</a></li>		  
		  <li role="presentation"><a href="#">상점목록</a></li>
		  <li role="presentation" class="active"><a href="#">문의</a></li>
		</ul>
	</div>
	<br>
	
		<div class="panel panel-primary">
			<div class="panel-heading"><h4>문의목록</h4></div>
			
				<table class="table table-hover">			
					<tr>					
						<th style="text-align: center;">번호</th>
						<th style="text-align: center;">상태</th>
						<th style="text-align: center;">제목</th>
						<th style="text-align: center;">작성자</th>
						<th style="text-align: center;">작성날짜</th>						
						
					</tr>	
					<tbody data-ng-repeat="x in inquiry">
								
					<tr>					
						<td style="text-align: center;">{{$index}}</td>
						<td>답변대기중</td>						
						<td><a href="" data-ng-click="toggle($index)">title</a></td>
						<td>writer</td>
						<td>0000-00-00</td>
						
					</tr>
					<tr data-ng-show="myVar == $index">
						<td colspan="6" style="text-align: left;">
							<div class="list-group">
								<div class="list-group-item">
									<h4 class="list-group-item-heading">내용</h4>
									<p class="list-group-item-text">ㄴㅇㅁㅇㅁㄴㅇㅁ</p>
								</div>
								<div class="list-group-item">
									<h4 class="list-group-item-heading">답변</h4>
									<p class="list-group-item-text">ㅁㄴㅇㅁㄴㅇㄴㅁㅇ</p>
								</div>
							</div>									
						</td>
					</tr>	
					</tbody>		
				</table>				
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
	<br>
	<div class="panel panel-info">
		<div class="panel-heading"><h4>문의하기</h4></div>
		<div class="panel-body">
			<form action="" class="form">				
				  <h5>제목</h5>
				 <input type="text" class="form-control" placeholder="제목을 입력해 주세요">				
				  <h5>내용</h5>
				 <textarea class="form-control" placeholder="내용을 입력해 주세요" rows="5"></textarea>
				 <br>			
				 <div class="btn-group">
				 	<input type="submit" class="btn btn-info" value="등록하기">
				 	<input type="reset"  class="btn btn-info" value="다시하기">
				 </div>						
			</form>
		</div>
	</div>
				
				
					
</body>

</html>