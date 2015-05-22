<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<body data-ng-controller="adminpageCtrl">	
    
	<div class="panel panel-primary">
			<div class="panel-heading"><h4>가입요청</h4></div>
			<div class="panel-body">
				<table style="width: 100%;" class="table table-hover">
					<thead>
						<tr>
							<th>번호</th>
							<th>사업자 번호</th>							
							<th>요청 날짜</th>
							<th>승인 / 거절</th>
						</tr>
					</thead>
					<tbody data-ng-repeat="x in stayList">
					 	<tr>
					 		<td>{{$index +1}}</td>		
			    			<td><a href="" data-ng-click="toggle($index)">{{ x.BUSINESSNUMBER }}</a></td>			    			
							<td>{{x.WDATE}}</td>
							<td>	
								<div class="btn-group">    				
				    				<button class="btn btn-info" data-ng-click="accept($index)">승인</button>
									<button class="btn btn-info" data-ng-click="reject($index)">거절</button>
								</div>	    				
							</td>
						</tr>
						<tr data-ng-show="adminpageVar == $index">
							<td colspan="4">
								<div class="panel">
									<div class="panel-body">
										<ul class="list-group">
											<li class="row list-group-item">
												<div class="col-sm-4">회원명</div>
												<div class="col-sm-8">{{x.BUSINESSNAME}}</div>								
											</li>
											<li class="row list-group-item">
												<div class="col-sm-4">EMAIL</div>
												<div class="col-sm-8">{{x.EMAIL}}</div>								
											</li>
											<li class="row list-group-item">
												<div class="col-sm-4">PHONE</div>
												<div class="col-sm-8">{{x.PHONE}}</div>								
											</li>
											<li class="row list-group-item">
												<div class="col-sm-4">EMAIL 수신 동의 여부</div>
												<div class="col-sm-8">{{x.EMAILACCEPT}}</div>								
											</li>
											<li class="row list-group-item">
												<div class="col-sm-4">SMS 수신 동의 여부</div>
												<div class="col-sm-8">{{x.SMSACCEPT}}</div>								
											</li>
											
											<li class="row list-group-item">
												<div class="col-sm-4">상태</div>
												<div class="col-sm-8">{{x.CONDITION}}</div>								
											</li>												
										</ul>
									</div>
								</div>							
							</td>
						</tr>
			  		</tbody> 			
				</table>
				<div class="row">					
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
</body>