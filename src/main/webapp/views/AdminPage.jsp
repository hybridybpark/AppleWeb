<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/common.jspf" %>

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
		$scope.message = "Number : "+(index+1)+ " Name : "+$scope.names[index].Name
										      + " Country : "+$scope.names[index].Country;
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

});

</script>
<style type="text/css">
	
	th {
		text-align: center;
	}
	
	tr {
		text-align: center;
	}
	/*
  	.btn .btn-primary{  
 		width:50px; height:30px;  
 		text-size: 100px;
  	} 
  	 */

</style>
<title>AdminPage.jsp</title>

</head>

<body data-ng-controller="myController">
	<header class="container">
		<h1 align="center">가입 요청</h1>
	</header>
	<section class="container">	
		<!-- Table -->
		<table style="width: 100%; border: 1px solid black;" class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>목록</th>
					<th>확인</th>
					<th>날짜</th>
				</tr>
			</thead>
			<tbody data-ng-repeat="x in names">
			 	<tr>
			 		<td>{{$index +1}}</td>
	    			<td><a href="" ng-click="toggle($index)">{{ x.Name }}</a></td>
	    			<td class="btn btn-group-inline">	    				
	    				<button style="width: 70px;" type="button" class="btn btn-primary">승인</button>
						<button style="width: 70px;" type="button" class="btn btn-primary">거절</button>	    				
					</td>
					<td>2015.4.24 오전 11:35</td>
					<tr data-ng-show="myVar == $index"><td><td align="center">가입자 정보</td></td></tr>
	  			</tr>
	  		</tbody> 			
		</table>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
		<nav align="center">
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
	</div>	
	</section>
</body>

<body data-ng-controller="myController">
	<header class="container">
		<h1 align="center">입점 요청</h1>
	</header>
	<section class="container">	
		<!-- Table -->
		<table style="width: 100%; border: 1px solid black;" class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>목록</th>
					<th>확인</th>
					<th>날짜</th>
				</tr>
			</thead>
			<tbody data-ng-repeat="x in names">
			 	<tr>
			 		<td>{{$index +1}}</td>
	    			<td><a href="" ng-click="toggle($index)">{{ x.Name }}</a></td>
	    			<td class="btn btn-group-inline">	    				
	    				<button style="width: 70px;" type="button" class="btn btn-primary">승인</button>
						<button style="width: 70px;" type="button" class="btn btn-primary">거절</button>	    				
					</td>
					<td>2015.4.24 오전 11:35</td>
					<tr data-ng-show="myVar == $index"><td><td align="center">가입자 정보</td></td></tr>
	  			</tr>
	  		</tbody> 			
		</table>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
		<nav align="center">
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
	</div>	
	</section>
</body>
</html>