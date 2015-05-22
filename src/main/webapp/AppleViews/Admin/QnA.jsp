<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<body data-ng-controller="qnaCtrl">
	<div class="panel panel-primary">
			<div class="panel-heading"><h4>문의게시판</h4></div>
			<div class="panel-body">
	<header class="container">
	</header>
	
	<section class="container">
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
			
			<tbody  data-ng-repeat="x in list">
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
			  					<input type="button" value="수정" onClick="goURI('modify')"/>
								<input type="button" value="삭제" onClick="goURI('delete')" data-ng-click="deleteAction($index)"/>
								<input type="password" name="password" placeholder=" 비밀번호입력 "  data-ng-model="inputpassword"/>
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
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
		<nav>
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
		<div class="col-sm-4"></div>
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
