<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<!DOCTYPE>

<html data-ng-app="mainApp">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> -->
<!-- <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script> -->
<!-- <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script> -->

<!-- Business JavaScript -->
   
<script src="/AppleWeb/js/Business/Business.js"></script>

<!-- Business css -->

<link href="/AppleWeb/css/Business/business.css" rel="stylesheet">


<title>BusinessMemberReservationManagementPage.jsp</title>


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
<body class="container" data-ng-controller="businessCtrl">
	
	
		<div class="panel panel-primary">
			<div class="panel-heading"><h4>예약목록</h4></div>
			<div class="panel-body">
				<p>예약 날짜</p>				
				<select name="year">
					<c:forEach var="year" begin="2000" end="2100" >
						<c:if test="${year == current.year+1900}">
							<option value="${year}" selected="selected">${year} 년도</option>
						</c:if>
						<c:if test="${year != current.year+1900}">
							<option value="${year}">${year} 년도</option>
						</c:if>
					</c:forEach>
				</select>
				<select name="month">
					<c:forEach var="month" begin="1" end="12" >
						<c:if test="${month == current.month+1}">
							<option value="${month}" selected="selected">${month} 월</option>
						</c:if>
						<c:if test="${month != current.month+1}">
							<option value="${month}">${month} 월</option>
						</c:if>
					</c:forEach>
				</select>
				
				<select name="date" id="dateS">
					<c:forEach var="date" begin="1" end="31" >
						<c:if test="${date == current.date}">
							<option value="${month}" selected="selected">${date} 일</option>
						</c:if>
						<c:if test="${date != current.date}">
							<option value="${date}">${date} 일</option>
						</c:if>
					</c:forEach>
				</select>
			</div>				
				<table class="table">			
					<tr>					
						<th>시간</th>
						<th>가게</th>
						<th>예약명</th>
						<th>연락처</th>
						<th>명수</th>
						<th>상태</th>
					</tr>	
					<tbody data-ng-repeat="x in reservation">
								
					<tr>					
						<td>{{x.time}}</td>
						<td>{{x.sname}}</td>
						<td><a href="" data-ng-click="toggle($index)">{{x.name}}</a></td>
						<td>{{x.phone}}</td>
						<td>{{x.people}}</td>
						<td>{{x.state}}</td>
					</tr>
					<tr data-ng-show="myVar == $index">
						<td colspan="6">
							<p>메뉴</p>
							<ul class="list-group">
								<li class="list-group-item">{{x.msid}}</li>
							</ul>
							<div class="btn-group">
								<button class="btn btn-info">예약확인</button>
								<button class="btn btn-info">취소</button>
							</div>
						</td>
					</tr>	
					</tbody>		
				</table>				
		<nav style="text-align: center;">
		  <ul class="pagination">
		    <li>
		      <a href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li><a href="#">1</a></li>
		    <li><a href="#">2</a></li>
		    <li><a href="#">3</a></li>
		    <li><a href="#">4</a></li>
		    <li><a href="#">5</a></li>
		    <li>
		      <a href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
		
	</div>
</body>

</html>