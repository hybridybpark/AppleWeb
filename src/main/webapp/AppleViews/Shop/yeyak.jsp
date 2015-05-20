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

<!-- yeyak JavaScript -->
   
<script src="/AppleWeb/js/Shop/yeyak.js"></script>

<!-- yeyak css -->

<link href="/AppleWeb/css/Shop/yeyak.css" rel="stylesheet">

<title>yeyak</title>


</head>

	
<!-- Title-->

<body class="container" data-ng-controller="businessCtrl">
	
	
		<div class="panel panel-primary">
			<div class="panel-heading"><h4>예약하기</h4></div>
			
			<div class="panel-body">
		<div align="center">
		<table>
			<tr>
				<th></th>
				<td>
					<form role="form">
					메뉴 등록리스트
					<div class="form-group">
					<textarea cols="50" rows="3" onclick="onLoadTextArea();" style="resize: none; border:1px solid lightgray; width: 900px; height: 150px;">Some long text…</textarea>
					</div>
				</form>
			</td>
		</tr>
		</table>
		</div>
		</div>
			
			<div class="panel-body">
			<div class="col-sm-4">
				<input type="text" data-ng-model="Binfo.Bname" placeholder="예약자 이름">
			</div> 
			<div class="col-sm-4">
				<input type="text" data-ng-model="Binfo.Baddress" placeholder="예약자 전화번호">
			</div>
		</div>
		<div class="panel-body">
			<div class="search_bbs">
			<div class="col-sm-4">
					<select name="SearchItem" Id="SearchItem" title="검색구분">
						<option value="TOTAL" selected >인원수 선택</option>
					</select>
				</div>
			<div class="col-sm-4">
					<select name="SearchItem" Id="SearchItem" title="검색구분">
						<option value="TOTAL" selected >날짜 선택</option>
					</select>
				</div>
			<div class="col-sm-4">
					<input type="text" data-ng-model="Binfo.Baddress" placeholder="총 주문가격">
				</div>
				</div>
				</div>
			  <br>
		<div class="panel-body">
<!-- 		수정 할곳  -->
<!-- 		수정 할곳  -->
		<div align="center">
		<table>
			<tr >
				<th ></th>
				<td>
				
					<form role="form">
					추가 사항
					<div class="form-group">
					<textarea cols="50" rows="3" onclick="onLoadTextArea();" style="resize: none; border:1px solid lightgray; width: 500px; height: 100px;">Some long text…</textarea>
					</div>
				</form>
				
			</td>
		</tr>
		</table>
		</div>
		
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
			<div class="btn-group" role="group">
					<button class="btn btn-success" data-ng-click="loginClick()">예약</button>
					<button class="btn btn-danger">취소</button>
			</div>
		</div>
		</div>
	</div>
	</div>
</body>

<!-- <body data-ng-controller="shopinfoCtrl" class="container"> -->

<!-- 	<div class="panel panel-primary"> -->
<!-- 		<div class="panel-heading"> -->
<!-- 			<p>예약하기</p> -->
<!-- 		</div> -->
<!-- 		<div class="panel-body"> -->
<!-- 			<ul class="list-group"> -->
<!-- 				<li class="list-group-item"><label class="col-lg-2">예약자명</label> -->
<!-- 					<input type="text" class="col-lg-4" placeholder="이름을 입력하세요" -->
<!-- 					maxlength="30"></li> -->
<!-- 				<li class="list-group-item"><label class="col-lg-2">전화번호</label> -->
<!-- 					<input type="number" class="col-lg-4" placeholder="전화번호를 입력하세요" -->
<!-- 					maxlength="30"></li> -->
<!-- 				<li class="list-group-item"><label class="col-lg-2">추가사항</label> -->
<!-- 					<input type="text" class="col-lg-4" placeholder="추가사항을 입력하세요" -->
<!-- 					maxlength="30"></li> -->
<!-- 				<li class="list-group-item"><label class="col-lg-2">날짜</label> -->
<!-- 					<input type="date" class="col-lg-4" datepicker-popup ng-model="dt" -->
<!-- 					is-open="opened" min-date="minDate" max-date="'2015-06-22'" -->
<!-- 					datepicker-options="dateOptions" -->
<!-- 					date-disabled="disabled(date, mode)" ng-required="true" -->
<!-- 					close-text="Close" /></li> -->
<!-- 				<li class="list-group-item"><label class="col-lg-2">메뉴</label> -->
					
<!-- 					<tr> -->
<!-- 						<th><img src="/AppleWeb/Images/Menu/A2.jpg" -->
<!-- 							style="width: 150px; height: auto;" hspace="20"></th> -->
<!-- 						<th><img src="/AppleWeb/Images/Menu/col.jpg" -->
<!-- 							style="width: 150px; height: auto;" hspace="20"></th> -->
<!-- 						<th><img src="/AppleWeb/Images/Menu/A2.jpg" -->
<!-- 							style="width: 150px; height: auto;" hspace="20"></th> -->
<!-- 					</tr> -->

<!-- 				<li class="list-group-item"></li> -->
<!-- 				<li class="list-group-item"> -->
<!-- 					<button class="btn btn-success">예약</button> -->
<!-- 					<button class="btn btn-danger">취소</button> -->
<!-- 				</li> -->

<!-- 			</ul> -->
<!-- 		</div> -->
<!-- 	</div> -->

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

