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

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<script type="text/javascript">

var myApp = angular.module('myApp',[]);

myApp.controller('myController',function($scope,$http){	
	
	$http.get("http://localhost:8080/AppleWeb/Apple/admin/list.json").success(function (data) {
		$scope.names2 = data.records;
		});
	
	
	
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
	
// $(document).ready(function(){
// 	var students_score = ["#p1","#p2","#p3","#p4","#p5"];
// 	for(var i=0;i<5;i++){		
// 		$(students_score[i]).mousedown(function(){
// 			alert(students_score[i]+"");
// 	        $(students_score[i]).attr("class","active");
// 	        $(students_score[i]).siblings().attr("class","");
// 	    });
// 	};
// });

$(document).ready(function(){
		$("#p1").mousedown(function(){
	        $("#p1").attr("class","active");
	        $("#p1").siblings().attr("class","");
	    });
		$("#p2").mousedown(function(){
	        $("#p2").attr("class","active");
	        $("#p2").siblings().attr("class","");
	    });
		$("#p3").mousedown(function(){
	        $("#p3").attr("class","active");
	        $("#p3").siblings().attr("class","");
	    });
		$("#p4").mousedown(function(){
	        $("#p4").attr("class","active");
	        $("#p4").siblings().attr("class","");
	    });
		$("#p5").mousedown(function(){
	        $("#p5").attr("class","active");
	        $("#p5").siblings().attr("class","");
	    });
});


</script>
<style type="text/css">
	
	th {
		text-align: center;
	}
	
	tr {
		text-align: center;
	}

  	 

</style>
<title>AdminPage.jsp</title>

</head>

<body data-ng-controller="myController">
	<header class="container">
		<h1 align="center">가입 페이지</h1>
		<ul class="nav navbar-nav navbar-right">
	        <li><a href="/AppleWeb/Apple/"><span class="glyphicon glyphicon-log-in"></span> Main</a></li>
	        <li><a href="/AppleWeb/Apple/"><span class="glyphicon glyphicon-log-in"></span> 로그아웃</a></li>
	      </ul>      
	</header>
	
	<!-- 	Category -->
	<section class="container">
		<div class="navbar-header">
	    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">        
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <p>Category</p>
	    </button>    
	</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav nav-tabs nav-justified">
			<li><a href="/AppleWeb/Apple/admin/">가입 요청</a></li>
			<li><a href="/AppleWeb/Apple/neighbor/">입점 요청</a></li>
			<li><a href="/AppleWeb/Apple/member/">회원목록</a></li>
		</ul>
	</div>
	
		<!-- Table -->
		<table style="width: 100%; border: 1px solid black;" class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>목록</th>
					<th>확인</th>
					<th>요청 날짜</th>
				</tr>
			</thead>
			<tbody data-ng-repeat="x in names2">
			 	<tr>
			 		<td>{{$index +1}}</td>
	    			<td><a href="" ng-click="toggle($index)">{{ x.BUSINESSNUMBER }}</a></td>
	    			<td class="btn btn-group-inline">	    				
	    				<button>승인</button>
						<button>거절</button>	    				
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
		    <li id="p1" class="active"><a href="#">1</a></li>
		    <li id="p2" class=""><a href="#">2</a></li>
		    <li id="p3" class=""><a href="#">3</a></li>
		    <li id="p4" class=""><a href="#">4</a></li>
		    <li id="p5" class=""><a href="#">5</a></li>
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