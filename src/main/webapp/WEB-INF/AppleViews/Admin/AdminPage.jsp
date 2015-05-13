<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<!DOCTYPE>


<!-- AdminPage JavaScript -->
   
<script src="/AppleWeb/js/Admin/AdminPage.js"></script>

<!-- AdminPage css -->

<link href="/AppleWeb/css/Admin/AdminPage.css" rel="stylesheet">
	
	<!-- Table -->
	<div class="panel panel-primary">
			<div class="panel-heading"><h4>가입요청</h4></div>
			<div class="panel-body">
		<table style="width: 100%;" class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>목록</th>
					<th>확인</th>
					<th>요청 날짜</th>
				</tr>
			</thead>
			<tbody data-ng-repeat="x in names3">
			 	<tr>
			 		<td>{{$index +1}}</td>
<!-- 	    			<td><a href="" ng-click="toggle($index)">{{ x.BUSINESSNUMBER }}</a></td> -->
	    			<td><a href="" ng-click="toggle($index)">{{ x.name }}</a></td>
	    			<td class="btn btn-group-inline">	    				
	    				<button>승인</button>
						<button>거절</button>	    				
					</td>
					<td>2015.4.24 오전 11:35</td>
					<tr data-ng-show="myVar == $index"><td><td align="center">가입자 정보</td></tr>
	  		</tbody> 			
		</table>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
		<nav align="center">
		  <ul class="pagination">
		    <li>
		      <a href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li id="p1" class="active"><a href="#">1</a></li>
		    <li id="p2" class=""><a href="#">2</a></li>
		    <li id="p3" class=""><a href="#">3</a></li>
		    <li id="p4" class=""><a href="#">4</a></li>
		    <li id="p5" class=""><a href="#">5</a></li>
		    <li>
		      <a href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
	</div>
	</div>
	</div>
	</div>	
