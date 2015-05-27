<%@page import="java.util.Date"%>
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
<%
	Date current = new Date();
	pageContext.setAttribute("current", current);
%>
<script type="text/javascript">

function changeListener() {
	//alert(this.value);
	var d = new Date(year.value,month.value ,1);
	d.setDate(d.getDate()-1);		
	var options="";
	for(var i=0; i<d.getDate();i++){
		options += "<option>"+(i+1)+" 일</option> \n";
	}
	//alert(d);
	dateS.innerHTML = options;
};	
window.onload = function() {
	var year = document.querySelector("select[name=year]");
	var month = document.querySelector("select[name=month]");
	var date = document.querySelector("select[name=date]");
	
	year.onchange = changeListener;
	month.onchange = changeListener;
};
</script>

	
<!-- Title-->

<body class="container" data-ng-controller="businessCtrl">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h4>주문리스트</h4>
		</div>
		<form name="boardFrm" role="form" action="http://localhost:8080/AppleWeb/Apple/Business.do">
			<div class="panel-body">
			<!-- 				메뉴리스트 -->	
						<table class="table">
							<caption>메뉴 목록</caption>							
							<thead>
								<tr>
									<td>번호</td><td>종류</td><td>이름</td><td>수량</td><td>가격</td>
								</tr>	
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>category</td>
									<td>name</td>
									<td>price</td>
								</tr>
							</tbody>
						</table>	
			</div>
		<!-- 				주문등록 -->
						
						<table class="table">
							<caption>주문등록</caption>							
							<tbody>
								<tr>
									<td class="col-sm-2"><label>주문자 이름</label></td>
									<td class="col-sm-10">										
										<input type="text" data-ng-model="Binfo.Mname" placeholder="메뉴 이름" name="Mname" class="form-control">										
									</td>
								</tr>
								<tr>
									<td><label>연락처</label></td>
									<td>										
										<input data-ng-model="Binfo.Mprice" type="text"	 class="form-control" title="검색" name="Mprice"
									id="SearchText" value="" placeholder="가격 입력" />								
									</td>
								</tr>
								
								<tr>
									<td><label>주문 가격</label></td>
									<td>										
										<input data-ng-model="Binfo.Mprice" type="text"	 class="form-control" title="검색" name="Mprice"
									id="SearchText" value="" placeholder="가격 입력" />								
									</td>
								</tr>
								<p>방문 날짜</p>				
								<div class="row">
									<div class="col-sm-6">					
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
									</div>
								<tr>
									<td><label>추가사항</label></td>
									<td>										
										<textarea rows="3" onclick="onLoadTextArea();"  class="form-control" 
										style="resize: none; border: 1px solid lightgray; width: 500px; height: 100px;">Some long text…</textarea>					
									</td>
								</tr>
								
							</tbody>
						</table>		
					<hr>		

			<div class="panel-footer">
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
						<div class="btn-group" role="group">
							<button class="btn btn-success" data-ng-click="loginClick()">
								<span class=""></span>등록
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

