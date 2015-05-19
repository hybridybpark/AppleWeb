<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf" %> --%>

<!DOCTYPE>

<html data-ng-app="qnaApp">

<head>

<meta charset="UTF-8">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

<!-- QnA JavaScript -->
   
<script src="/AppleWeb/js/QnA/qna.js"></script>

<!-- QnA css -->

<link href="/AppleWeb/css/QnA/qna.css" rel="stylesheet">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<title>Q&A.jsp</title>

</head>

<!-- Title-->

<body data-ng-controller="qnaCtrl">
	
	<div class="panel panel-primary" style="margin-top: 16px;">
		<div class="panel-heading"><h4>문의게시판</h4></div>
		<div class="panel-body">	
			<section>
				<!-- Table -->
				<table class="table table-hover">
					<thead>
						<tr>
							<th>번호</th>
							<th>내용</th>
							<th>작성자</th>
							<th>날짜</th>
							<th>조회수</th>
						</tr>
					</thead>
					
					<tbody  data-ng-repeat="x in list" data-ng-show="($index < currentPage*itemPerPage) &&($index+1 > (currentPage-1)*itemPerPage)">
					 	
					 	<tr align="center">			 	
					 		<td>{{$index + 1}}</td>
			    			<td><a href="" data-ng-click="toggle($index)" >	    					
										{{x.title}}</a></td>
			    			<td>{{x.name}}</td>
							<td>{{x.wdate}}</td>
							<td><input type="hidden" name="seq" value="${read.seq}"></td>
			  			</tr>
			  			<tr data-ng-show="myVar == $index">
				  			<td colspan="5">
				  				<div class="panel panel-default">
				  					<div class="panel-body">
				  					<p>{{x.content}}</p>	
					  					<input type="button" value="수정" />
										<input type="button" value="삭제" data-ng-click="deleteAction($index)"/>
										<input type="password" name="password" placeholder=" 비밀번호입력 "  data-ng-model="x.password"/>
				  					</div>	
				  					<div class="panel-body">
				  			  		&#8627<p>{{x.replycontent}}</p><p>{{x.rdate}}</p>
				  			 		</div>		  				
				  				</div>
				  				<form>
				  				<div class="input-group">
				  					댓글 : <input type="text" size="40"><button class="btn">입력</button>
				  				</div>
				  				</form>
				  			</td>	  			
						</tr>
						
			  		</tbody> 		
				</table>
				
		<!-- 		게시판 페이지 -->
			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
				<pagination boundary-links="true"
				 total-items="totalItems"
				 items-per-page="itemPerPage"
				  ng-model="currentPage"
				   class="pagination-sm"
				    previous-text="&lsaquo;"
				     next-text="&rsaquo;"
				      first-text="&laquo;" 
				      last-text="&raquo;"></pagination>
				</div>
				<div class="col-sm-3"></div>
				</div>	
				
				<tr align="center">
					<td colspan="2"> <br>
						<a href="" data-ng-click="goWrite()"><input type="button" value="글쓰기"></a>
					</td>
				</tr>
				</section>
			</div>
		</div>
	</body>
</html>