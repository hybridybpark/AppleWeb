<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/common.jspf"%>

<!DOCTYPE>

<html data-ng-app="myApp">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<title>gageinfo.jsp</title>

<style type="text/css">
.navbar-inline {
	margin-top: 20px;
}

.info {
	margin-top: 20px;
}
</style>



</head>

<body>

	<header class="container">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<ul class="nav navbar-nav navbar-inline">
					<li class="brand"><img alt="brand"
						src="http://placehold.it/600x100"></li>
				</ul>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</header>

	<section>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<div class="col-sm-3"></div>
			<div class="col-sm-5">
				<ul class="nav nav-tabs nav-justified">
					<li class="active"><a href="#1">정보</a></li>
					<li><a href="#2">메뉴</a></li>
					<li><a href="#3" >리뷰</a></li>
				</ul>
			</div>
		</div>

		<div class="col-sm-3"></div>
		<div class="col-sm-4">
			<div class="info">
				<div class="date_title">
					<dl>
						<dt>스타벅스(강남)</dt>
					</dl>
				</div>
				<div class="detail_content">
					<ul class="place_detail">
						<li><b>주소</b> <span>서울 강남구 역삼동 816-4 </span></li>
						<li><b>전화번호</b> <span> 02-568-9135 </span></li>
					</ul>
				</div>
			</div>
		</div>
		
		
		<div class="row">
			<div class="col-sm-8 box">
				<map data-center="37.533699, 127.071311" data-zoom="16"></map>
			</div>
		</div>
		
		
	</section>
	
	
</body>

</html>