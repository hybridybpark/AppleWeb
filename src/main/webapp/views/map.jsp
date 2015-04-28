<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/common.jspf" %>

<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>map.jsp</title>
<!-- <link rel="stylesheet" href="bootstrap-3.3.4/css/bootstrap.min.css"> -->


<!-- <script type="text/javascript" src="http://maps.google.com/maps/api/js"></script> -->
<!-- <script type="text/javascript" src="jquery/jquery-2.1.3.min.js"></script> -->
<!-- <script type="text/javascript" src="bootstrap-3.3.4/js/bootstrap.min.js"></script> -->


<!-- <script type="text/javascript" src="angular-1.3.15/angular.min.js"></script> -->
<!-- <script type="text/javascript" src="angular-1.3.15/angular-sanitize.min.js"></script> -->
<!-- <script type="text/javascript" src="angular-1.3.15/angular-animate.min.js"></script> -->
<!-- <script type="text/javascript" src="angular-1.3.15/ng-map.min.js"></script> -->

<!-- <script src="http://rawgit.com/allenhwkim/angularjs-google-maps/master/build/scripts/ng-map.min.js"></script> -->


<script type="text/javascript">
	var app = angular.module("myApp",["ngSanitize", "ngAnimate", "ngMap"]);
	app.controller("myController", function($scope, GeoCoder) {
		$scope.$on('mapInitialized', function(event, map) {
// 		      map.setCenter( )
				alert("mapInitialized...");		     
		    });
		$scope.map1 = function() {
			$scope.map.setCenter({
				lat : 37.571844,
				lng : 126.976318
			});
			$scope.map.setZoom(18);
		};
		
		$scope.map2 = function() {
			var addr = GeoCoder.geocode({address : '강릉 경포대'});
			addr.then(function(result) {
				console.log(result[0]);
				console.log(result[0].geometry.location);
				
				$scope.map.setCenter({
					lat : result[0].geometry.location.k,
					lng : result[0].geometry.location.D
				});
				$scope.map.setZoom(18);
			});
			
		};
		
	});


</script>
<style type="text/css">
	.box{
		border: 1px solid red;
	}
</style>

</head>

<body data-ng-controller = "myController">
	<section class="container">
		<div class="row">
			<div class="col-sm-4 box">
				<button class="btn btn-success" data-ng-click="map1()">광화문</button>			
				<button class="btn btn-primary" data-ng-click="map2()">서울대</button>			
				
			</div>
			<div class="col-sm-8 box">
				<map data-center="37.533699, 127.071311" data-zoom="16"></map>
			</div>
		</div>
	</section>


</body>
</html>