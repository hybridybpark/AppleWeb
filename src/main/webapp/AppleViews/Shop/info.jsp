<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	
<!-- <script src="/AppleWeb/js/Shop/review.js"></script> -->
	
<title>INFO</title>

</head>
<body data-ng-controller="shopinfoCtrl" class="container">
<p>INFO</p>

				
				<div class="panel panel-primary">
					<div class="panel-heading">
						<p>스타벅스(이대)</p>
					</div>
					<div class="panel-body">
						<ul class="list-group">
							<li class="list-group-item"><b>주소</b> <span>서울특별시 서대문구 대현동 성실건축</span></li>
							<li class="list-group-item"><b>전화번호</b> <span> 02-568-9135 </span></li>
						</ul>
					</div>
					<div class="panel-body">
						<div id="map" class="col-md-6" style="height: 300px;"></div>
					</div>
										
				</div>
				<script type="text/javascript">
				var element = document.getElementById('map');
				var map = new google.maps.Map(element, {
					zoom : 18,
					center : new google.maps.LatLng(37.558656,
							126.945984),
					mapTypeId : google.maps.MapTypeId.ROADMAP
				});
				//마커 생성
				new google.maps.Marker({
					position : new google.maps.LatLng(37.558656,
							126.945984),
					map : map
				});
				</script>

</body>
</html>		
			
		