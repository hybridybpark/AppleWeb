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
	
<title>REVIEW</title>
</head>
<body data-ng-controller="shopinfoCtrl" class="container">
<p>review</p>
<div class="btn-group btn-group-justified">
	<div class="btn-group">
		<button class="btn btn-default" onclick="window.open('shopinfo/review_input', '', 'top=10px, left=10px, height=600 width=800')">리뷰 남기기</button>
	</div>
</div>

<ul class="list-group">
	<li class="list-group-item">
		<div class="panel panel-success">
			<div class="panel-heading">
				<div class="row">
					<div class="col-sm-4">
						writer
					</div>
					<div class="col-sm-4"></div>
					<div class="col-sm-4" align="right">
						0000-00-00 00:00
					</div>
				</div>		
			</div>	
			<div class="panel-body">		
				<div class="media">
					<div class="media-body">
						<img alt="" src="http://placehold.it/300x100">				
					</div>			
				</div>	
				미디어 후기
			</div>
			<div class="panel-footer">
				<div style=" margin-left: 10px;">
					<div class="row" style="border-bottom: 1px solid gray;">
						<div class="col-sm-4">
							reply
						</div>
						<div class="col-sm-4"></div>
						<div class="col-sm-4" align="right">
							0000-00-00 00:00
						</div>
					</div>		
					<div>
						reply content
					</div>
				</div>			
			</div>
		</div>
	</li>
	<li class="list-group-item">
		<div class="panel panel-success">
			<div class="panel-heading">
				<div class="row">
					<div class="col-sm-4">
						writer
					</div>
					<div class="col-sm-4"></div>
					<div class="col-sm-4" align="right">
						0000-00-00 00:00
					</div>
				</div>		
			</div>	
			<div class="panel-body">		
				<div class="media">
					<div class="media-body">
						<img alt="" src="">				
					</div>			
				</div>	
				일반 후기
			</div>
			<div class="panel-footer">
				<div style=" margin-left: 10px;">
					<div class="row" style="border-bottom: 1px solid gray;">
						<div class="col-sm-4">
							reply
						</div>
						<div class="col-sm-4"></div>
						<div class="col-sm-4" align="right">
							0000-00-00 00:00
						</div>
					</div>		
					<div>
						reply content
					</div>
				</div>			
			</div>
		</div>
	</li>
</ul>





</body>
</html>