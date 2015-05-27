<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html data-ng-app="mainApp">
<title>메뉴</title>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="/AppleWeb/Frameworks/angular-1.3.15/angular.js"></script>

<!-- <!-- js 참조 -->
<!-- <script src="/AppleWeb/js/Menu/Menu.js"></script> -->
<!-- <!-- css참조 --> 
<!-- <script src="/AppleWeb/css/Menu/menu.css"></script> -->
</head>
<body>

	<div class="container">

		<h2>Menu</h2>
		<div class="panel-group">
			<div class="panel panel-default" data-ng-repeat="c in category">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#coll1">{{c.mcategory}}</a>
					</h4>
				</div>
				<div id="coll1" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="col-sm-3 col-lg-3 col-md-3" data-ng-repeat="x in menulist" data-ng-show="x.mcategory==c.mcategory && shopinfo.businessnumber== x.bnumber && shopinfo.shopname==x.sname"
							style="height: 480px;">
							<div class="thumbnail">
								<a href=""><img src="{{x.mimage}}"></a>
								<div class="caption">
									<h4 class="pull-right">{{x.mprice}} 원</h4>
									<h4>
										<a href="#">{{x.mname}} </a>
									</h4>
									<p>{{x.mdesc}}</p>
								</div>
								<div class="ratings">
									<p class="pull-right">15 reviews</p>
										<p>
										<span class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span> <span
											class="glyphicon glyphicon-star"> </span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer">
				<button class="default">장바구니 목록</button>
			</div>
			
			</div>
		</div>
</body>
</html>