<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<!-- Table -->
<body data-ng-controller="memberCtrl">
<div class="panel panel-primary">
	<div class="panel-heading"><h4>회원목록</h4></div>
	<div class="panel-body">
		<table style="width: 100%;" class="table table-hover">
			<thead>
				<tr><th>번호</th>	<th>사업자번호</th>	<th>회원명</th></tr>
			</thead>
			<tbody data-ng-repeat="x in memberList">
			 	<tr>
			 		<td>{{$index +1}}</td>
		   			<td><a href="" data-ng-click="toggle($index)">{{ x.BUSINESSNUMBER }}</a></td>		   			
					<td>{{x.BUSINESSNAME}}</td>
					<tr data-ng-show="myVar == $index">
						<td colspan="3">
							<div class="panel">
								<div class="panel-body">
									<ul class="list-group">
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
											<div class="col-sm-4">가입 요청 날짜</div>
											<div class="col-sm-8">{{x.WDATE}}</div>								
										</li>
										<li class="row list-group-item">
											<div class="col-sm-4">상태</div>
											<div class="col-sm-8">{{x.CONDITION}}</div>								
										</li>
										<li class="row list-group-item">
											<div class="col-sm-4">가입 수락 날짜</div>
											<div class="col-sm-8">{{x.ADATE}}</div>								
										</li>								
									</ul>
								</div>
							</div>
							
						</td>
					</tr>
		 		</tbody>
		 		<tfoot>
		 					
		 		</tfoot> 			
		</table>
		<pagination total-items="memberTotalItems" 
								ng-model="memberCurrentPage"				 
								class="pagination-sm" 
								boundary-links="true" 			 
								>
					</pagination>	 
					</div>
</div>
</body>
