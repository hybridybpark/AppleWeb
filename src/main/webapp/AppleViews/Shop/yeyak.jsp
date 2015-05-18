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

<title>yeyak</title>
</head>
<body data-ng-controller="shopinfoCtrl" class="container">
	<p>예약</p>


	<div class="panel panel-primary">
		<div class="panel-heading">
			<p>예약하기</p>
		</div>
		<div class="panel-body">
			<ul class="list-group">
				<li class="list-group-item"><label class="col-lg-2">예약자명</label>
					<input type="text" class="col-lg-4" placeholder="이름을 입력하세요"
					maxlength="30"></li>
				<li class="list-group-item"><label class="col-lg-2">전화번호</label>
					<input type="number" class="col-lg-4" placeholder="전화번호를 입력하세요"
					maxlength="30"></li>
				<li class="list-group-item"><label class="col-lg-2">추가사항</label>
					<input type="text" class="col-lg-4" placeholder="추가사항을 입력하세요"
					maxlength="30"></li>
				<li class="list-group-item"><label class="col-lg-2">날짜</label>
					<input type="date" class="col-lg-4" datepicker-popup ng-model="dt"
					is-open="opened" min-date="minDate" max-date="'2015-06-22'"
					datepicker-options="dateOptions"
					date-disabled="disabled(date, mode)" ng-required="true"
					close-text="Close" /></li>
				<li class="list-group-item"><label class="col-lg-2">메뉴</label>
					
					<tr>
						<th><img src="/AppleWeb/Images/Menu/A2.jpg"
							style="width: 150px; height: auto;" hspace="20"></th>
						<th><img src="/AppleWeb/Images/Menu/col.jpg"
							style="width: 150px; height: auto;" hspace="20"></th>
						<th><img src="/AppleWeb/Images/Menu/A2.jpg"
							style="width: 150px; height: auto;" hspace="20"></th>
					</tr>
					<tr height="0">
						<td class="text">가격</td>
						<td class="text">가격</td>
						<td class="text">가격</td>
					</tr>
					<tr>
						<td class="text">5000</td>
						<td class="text">6000</td>
						<td class="text">7000</td>
					</tr></li>
				<li class="list-group-item"></li>
				<li class="list-group-item">
					<button class="btn btn-success">예약</button>
					<button class="btn btn-danger">취소</button>
				</li>

			</ul>
		</div>
	</div>

	<!-- 	<img src="/AppleWeb/Images/Menu/A2.jpg" -->
	<!-- 						style="width: 150px; height: auto;" hspace="20"> -->
	<!-- 						<img src="/AppleWeb/Images/Menu/A2.jpg" -->
	<!-- 						style="width: 150px; height: auto;" hspace="20"> -->
	<!-- 						<img src="/AppleWeb/Images/Menu/A2.jpg" -->
	<!-- 						style="width: 150px; height: auto;" hspace="20"> -->
	<!-- 						<img src="/AppleWeb/Images/Menu/A2.jpg" -->
	<!-- 						style="width: 150px; height: auto;" hspace="20"> -->


</body>
</html>

