<%@page import="java.util.Date"%>
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
<!-- <script -->
<!-- 	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script> -->
<!-- <script -->
<!-- 	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script> -->

<!-- <script src="/AppleWeb/js/Shop/review.js"></script> -->

<!-- yeyak JavaScript -->
   
<!-- <script src="/AppleWeb/js/Shop/yeyak.js"></script> -->

<!-- yeyak css -->

<link href="/AppleWeb/css/Shop/yeyak.css" rel="stylesheet">

<title>yeyak</title>


</head>



	
<!-- Title-->

<body class="container" data-ng-controller="reservationCtrl">
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h4>예약 페이지</h4><small>{{shopinfo.shopchainname}}({{shopinfo.shopname}})</small>
		</div>
		<form role="form">
			<div class="panel-body">
			<!-- 				메뉴리스트 -->	
						<table class="table">
							<caption>메뉴 목록</caption>							
							<thead>
								<tr>
									<td>번호</td><td>종류</td><td>이름</td><td>가격</td>
								</tr>	
							</thead>
							<tbody>
								<tr data-ng-repeat="item in selectedMenuItem track by $index">
									<td>{{$index +1}}</td>
									<td>{{item.Mcategory}}</td>
									<td>{{item.Mname}}</td>
									<td>{{item.Mprice}}</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="4" style="text-align: right;" > 
										<ul class="list-inline">
										    <li style="color: green;">총 금액은 </li>
										    <li style="text-decoration: underline;">{{getTotalPrice}}원</li>
										    <li style="color: green;"> 입니다.</li>
										  </ul>										
									</td>
								</tr>
							</tfoot>
						</table>	
			</div>
			<div class="panel-body">
				<div class="row">					
				<div class="col-sm-6">
				<p>방문 날짜</p>					
				<label class="form-inline">
					<select class="form-control" ng-model="year" ng-options="y for y in years" ng-change="yearChange(year)"><option></option></select>
					년 </label>
				
					<label class="form-inline">						
					<select class="form-control" ng-model="month" ng-options="m for m in months" ng-change="monthChange(month)"><option ></option></select>
					월</label>
				
					<label class="form-inline">
					<select class="form-control" ng-model="day" ng-options="d for d in days" ng-change="dayChange(day)"><option></option></select>
					일</label>
					
					
				</div>
				<div class="col-sm-3">
					<p>방문 시간</p>
				<label class="form-inline">
					<select class="form-control" ng-model="time" ng-options="t for t in times" ng-change="timeChange(time)"><option></option></select>
					</label>
				</div>
				<div class="col-sm-3">
					<p>인원수</p> 
					<label class="form-inline">
					<select class="form-control" ng-model="human" ng-options="p for p in people" ng-change="humanChange(human)"><option></option></select>
					명 </label>
					
				</div>
			</div>
			</div>			
			
		<!-- 				주문등록 -->
			<div class="panel-body">
						
						<table class="table">
							<caption>주문등록</caption>							
							<tbody>
								<tr>
									<td class="col-sm-2"><label>주문자 이름</label></td>
									<td class="col-sm-10">										
										<input type="text" data-ng-model="order.name" placeholder="이름을 입력해 주세요" name="oname" class="form-control">										
									</td>
								</tr>
								<tr>
									<td><label>연락처</label></td>
									<td>										
										<input data-ng-model="order.phone" type="text"	 class="form-control" name="ophone"	placeholder="연락처를 입력해 주세요" />								
									</td>
								</tr>						
								<tr>
									<td><label>추가사항</label></td>
									<td>										
										<textarea rows="3" class="form-control"  data-ng-model="order.additional"
										style="resize: none; border: 1px solid lightgray; width: 100%; height: 100px;"></textarea>					
									</td>
								</tr>
								
							</tbody>
						</table>	
						</div>	
					<hr>		

			<div class="panel-footer">
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
						<div class="btn-group" role="group">
							<button class="btn btn-success" data-ng-click="resvClick()">
								<span class="glyphicon glyphicon-ok"></span>등록
							</button>
							<button class="btn btn-success" data-ng-click="cancelClick()">
								<span class="glyphicon glyphicon-remove"></span>취소
							</button>
						</div>
						<div class="col-sm-4"></div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>

</html>

