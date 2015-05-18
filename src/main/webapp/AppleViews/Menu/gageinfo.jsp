<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jspf/common.jspf"%>

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

* {
	margin: 0;
	padding: 0;
}

html, body {
	height: 100%
}

#map {
	margin-left: 50px;
	height: 30%;
	width: 100%;
	height: 30%;
}

#dat {
	margin-top: 20px;
}
</style>

<script src="http://maps.google.com/maps/api/js?sensor=false"></script>

</head>

<body>

	<header class="container">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<ul class="nav navbar-nav navbar-inline">
					<li class="brand"><img alt="brand"
						src="/AppleWeb/Images/starbucks.jpg"></li>
				</ul>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</header>

	<section>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<div class="col-sm-4"></div>
			<div class="col-sm-5">
				<ul class="nav nav-tabs nav-justified">
					<li class="active"><a href="#1">정보</a></li>
					<li><a href="#2">메뉴</a></li>
					<li><a href="#3">리뷰</a></li>
				</ul>
			</div>
		</div>

		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<div class="info">
				<div class="date_title">
					<dl>
						<dt>스타벅스(이대)</dt>
					</dl>
				</div>
				<div class="detail_content">
					<ul class="place_detail">
						<li><b>주소</b> <span>서울특별시 서대문구 대현동 성실건축</span></li>
						<li><b>전화번호</b> <span> 02-568-9135 </span></li>
					</ul>
					<div id="map"></div>
					<script>
						//지도 생성
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
				</div>


				<div id="dat">
					<p>
						<b>댓글달기</b>
					</p>
					<form class="form-inline">
						<div class="form-group">
							<label for="exampleInputName2">이름</label> <input type="text"
								class="form-control" id="exampleInputName2">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail2">비밀번호</label> <input
								type="password" class="form-control" id="exampleInputEmail2">
						</div>
<!-- 						Single button -->
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-expanded="false">
								★ <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">★★</a></li>
								<li><a href="#">★★★</a></li>
								<li><a href="#">★★★★</a></li>
								<li><a href="#">★★★★★</a></li>
							</ul>
						</div>
					</form>
					<textarea cols="60" id="comment" name="comment" fw-filter="isFill"
						fw-label="댓글내용" fw-msg="" placeholder="내용을 입력하세요"></textarea>
					<button type="submit" class="btn btn-default">확인</button>
										
				</div>
			</div>
		</div>







	</section>





</body>

</html>