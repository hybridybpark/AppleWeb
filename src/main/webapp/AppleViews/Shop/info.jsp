<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">

<!-- <link rel="stylesheet" -->
<!-- 	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> -->
<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> -->
<!-- 	<script -->
<!-- 	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script> -->
<!-- <script -->
<!-- 	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script> -->
	
	
<!-- <script src="/AppleWeb/js/Shop/review.js"></script> -->
	
<title>INFO</title>
</head>
<body data-ng-controller="shopinfoCtrl" class="container">
<!-- <p>INFO</p> -->
<br>
				
				<div class="panel panel-primary">
					<div class="panel-heading">
<!-- 						<p>스타벅스(이대)</p> -->
						<h3>{{chainname}}<small style="color: white;"> ({{shopinfo.shopname}})</small>
							
						</h3>
					</div>
					<div class="panel-body">
						<div class="media">
							<div class="media-left">
								<img alt="" src="{{shopinfo.shopimage}}">	
							</div>
							<div class="media-body">
								<div>
									<h3 class="text-info">{{chainname}} <small> 정보</small></h3>
								</div>
								{{chainDesc}}
							</div>
						</div>
						
						
					</div>
					<div class="panel-body">
						
						<ul class="list-group">
							<li class="list-group-item">
								<div class="row">
									<div class="col-sm-2"><b>주소</b></div>
									<div class="col-sm-10"><span> {{shopinfo.shopaddress}}</span></div>
								</div>
							 </li>
							<li class="list-group-item">
								<div class="row">
									<div class="col-sm-2"><b>전화번호</b></div>
									<div class="col-sm-10"><span> {{shopinfo.shopphone}} </span></div>
								</div>
							 </li>
							 <li class="list-group-item">
								<div class="row">
									<div class="col-sm-2"><b>상세정보</b></div>
									<div class="col-sm-10"><span> {{shopinfo.shopinfo}} </span></div>
								</div>
							 </li>
							  <li class="list-group-item">
								<div class="row">
									<div class="col-sm-2"><b>평점</b></div>
									<div class="col-sm-10">
										<rating ng-model="shopinfo.shopmark" max="max" readonly="true"></rating>
										{{shopinfo.shopmark}}
									</div>
								</div>
							 </li>
						</ul>
					</div>
					<div class="panel-body">
						<div class="col-sm-12" style="height: 400px;">
<!--  							<div id="map"></div>				 -->
							<map center="{{mapLoc.k}}, {{mapLoc.d}}" zoom="18">
								<marker position="{{mapLoc.k}}, {{mapLoc.d}}"></marker>
							</map>
						</div>						
					</div>
					
										
				</div>
	
</body>
</html>		
			
		