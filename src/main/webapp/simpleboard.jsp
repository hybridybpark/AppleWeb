<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jspf/common.jspf" %>

<!DOCTYPE>

<html data-ng-app="myApp">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<script type="text/javascript">

var myApp = angular.module('myApp',["ngAnimate","ngSanitize"]);

myApp.controller('myController',function($scope,$http){	
	
	$http.get("http://www.w3schools.com/angular/customers.php")
	 .success(function (response) {$scope.names = response.records;});
	
	$scope.itemClick = function(index) {
		$scope.message = "Number : "+(index+1)+" Name : "+$scope.names[index].Name+" Country : "+$scope.names[index].Country;
		alert($scope.names[index].Name+" clicked");
		alert($scope.message);
	};	
	
});

</script>

<title>simpleboard.jsp</title>

</head>

<body data-ng-controller="myController">
	<header class="container">
		<h3>번호/제목/비고 게시판</h3>
		
		
	
	</header>
	<section class="container">
	<div class="panel panel-default">
	  	<!-- Default panel contents -->
	  	<div class="panel-heading">테이블 이름</div>
	  	
	  	<div class="panel-body">
			<p>테이블 설명</p>
			<p>{{names}}</p>			
	  	</div>	  	
		
		<!-- Table -->
		<table class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
			 	<tr data-ng-repeat="x in names">
			 		<td>{{$index +1}}</td>
	    			<td><a href="" data-ng-click="itemClick($index)">{{ x.Name }}</a></td>
	    			<td>{{ x.Country }}</td>
	  			</tr>
	  			<tr>
			 		<td>0</td>
	    			<td>asd</td>
	    			<td>asd</td>
	  			</tr>
  			</tbody> 			
		</table>
		<nav>
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
	</section>
</body>

</html>