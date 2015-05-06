<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>


<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>

<style>
#line {
	border: 0.5px solid black;
}

#head {
	height: 100px;
	width: 800px;
	padding: 10px;
	border: 1px solid black;
	background-color: white;
}

#container {
	width: 940px;
	margin: 0px auto;
	padding: 20px;
}

#content {
	width: 800px;
	padding: 20px;
	margin-bottom: 20px;
	border: 0.5px solid orange;
	overflow: hidden;
}

.box {
	height: 230px;
	width: 250px;
	display: inline-block;
}

.image {
	
}

.text {
	top: 50px;
	left: 10px;
	width: 300px;
}
</style>


</head>



<body>

	<div id="container">

		<div id="head" class="text-align: center">
			<div class="form-group">
				<div class="col-md-4">
					<h2>가게이름</h2>
				</div>
				<div class="col-md-4">
					<small>가게설명입니다.저희가게는끝내줘요</small>
				</div>
				<div class="col-md-4">
					<h4>☆☆☆☆☆</h4>
				</div>
			</div>
		</div>
		<hr>
		<hr>


		<div id="content">
			<h3>MENU-</h3>
			<div class="box">
				<div class="image">
					<a href="#click1"> <img src="/AppleWeb/image/col.jpg" />
					</a>
					<div class="text">
						<p id="menuName1">메뉴이름</p>
						<p id="menuPrice1">메뉴가격</p>
					</div>
				</div>
			</div>
			<div class="box">
				<div class="media">
					<img src="/AppleWeb/image/A2.jpg" />
					<div class="text">
						<p id="menuName2">메뉴이름</p>
						<p id="menuPrice2">메뉴가격</p>
					</div>
				</div>
			</div>
			<div class="box">
				<div class="image">
					<img src="http://placehold.it/200x100" />
					<div class="text">
						<p id="menuName3">메뉴이름</p>
						<p id="menuPrice3">메뉴가격</p>
					</div>
				</div>
			</div>
			<div class="box">
				<div class="image">
					<img src="http://placehold.it/200x100" />
					<div class="text">
						<p id="menuName4">메뉴이름</p>
						<p id="menuPrice4">메뉴가격</p>
					</div>
				</div>
			</div>
			<div class="box">
				<div class="image">
					<img src="http://placehold.it/200x100" />
					<div class="text">
						<p id="menuName5">메뉴이름</p>
						<p id="menuPrice5">메뉴가격</p>
					</div>
				</div>
			</div>
			<div class="box">
				<div class="image">
					<img src="http://placehold.it/200x100" />
					<div class="text">
						<p id="menuName6">메뉴이름</p>
						<p id="menuPrice6">메뉴가격</p>
					</div>
				</div>
			</div>
			<div class="box">
				<div class="image">
					<img src="http://placehold.it/200x100" />
					<div class="text">
						<p id="menuName7">메뉴이름</p>
						<p id="menuPrice7">메뉴가격</p>
					</div>
				</div>
			</div>
			<div class="box">
				<div class="image">
					<img src="http://placehold.it/200x100" />
					<div class="text">
						<p id="menuName8">메뉴이름</p>
						<p id="menuPrice8">메뉴가격</p>
					</div>
				</div>
			</div>
			<div class="box">
				<div class="image">
					<img src="/AppleWeb/image/join/join.jpg" />
					<div class="text">
						<p id="menuName9">메뉴이름</p>
						<p id="menuPrice9">메뉴가격</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 메뉴 디테일 정보 들어가는 부분 -->

	<div id="container">
		<div id="content">

			<div>
				<div class="col-md-4">
					<!-- 선택된 이미지(id를 통해 연결) -->
					<div class="img" id="click1">
						<img src="/AppleWeb/image/col.jpg" />
						<div class="text">
							<hr>
							<div>
								<div>가격</div>
								<hr>
								<div>
									<input type="radio" name="rPrice" value="5000" />5000 <input
										type="radio" name="rPrice" value="6000" checked="checked" />6000
									<input type="radio" name="rPrice" value="7000" />7000
								</div>
							</div>
							<hr>
							<div>
								<div>옵션1</div>
								<hr>
								<div>
									<input type="radio" name="rOption1" value="option" />옵션1 <input
										type="radio" name="rOption1" value="option" checked="checked" />옵션2
									<input type="radio" name="rOption1" value="option" />옵션3
								</div>
							</div>
							<hr>
							
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="text">이음식은 매우맛있습니다 어서 사드세요</div>
				</div>
				<div>
				<div>옵션1</div>
								<hr>
								<div>
									<input type="radio" name="rOption1" value="option" />옵션1 <input
										type="radio" name="rOption1" value="option" checked="checked" />옵션2
									<input type="radio" name="rOption1" value="option" />옵션3
								</div>
				</div>
				<div class="col-md-4">
					<h1></h1>
				</div>
			</div>

		</div>
	</div>

	<div class="footer">
		<p class="text-center">
			<small><strong> Apple</strong></small><br> <small>대표 :
				Apple(주) ㆍ 주소 : 이대역 ㆍ 사업자등록번호:123-12-12345 ㆍ 전화 : 064-123-1234</small><br>
			<small>Copyrightⓒ All rights reserved.</small>
		</p>
	</div>
</body>

</html>