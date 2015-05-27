<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<body data-ng-controller="qnaCtrl">
	<div class="panel panel-primary">
			<div class="panel-heading"><h4>문의게시판</h4></div>
			<div class="panel-body">	
	
	
		<!-- Table -->
		<table class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
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
		  					</div>	
		  					<div class="panel-body" data-ng-show="x.rdate!=null">
		  			  		&#8627<p>{{x.replycontent}}</p><p>{{x.rdate}}</p>
		  			 		</div>		  				
		  				</div>	
	  					<div class="panel">
	  						<div class="panel-heading">	  							
	  									<h3 class="pull-left">답변</h3>  								
	  						</div>
	  						<div class="panel-body">
	  							<textarea class="form-control" rows="5" data-ng-model="x.replycontent"></textarea>
  										  					
	  						</div>
	  						<div class="panel-footer">
	  							<button class="btn pull-right" data-ng-click="replySubmin($index)">입력</button>
	  						</div>
	  					</div>		  											  						
			  					
		  				
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
		
		
		
		</div>
		</div>
	</body>
