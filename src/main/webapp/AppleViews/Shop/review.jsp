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
<!-- 	<script -->
<!-- 	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script> -->
<!-- <script -->
<!-- 	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script> -->
	
<!-- <script src="/AppleWeb/js/Shop/review.js"></script> -->
	
<title>REVIEW</title>
</head>
<body class="container">
<br>
<!-- review input button -->
<div class="btn-group btn-group-justified">
	<div class="btn-group">
<!-- 		<button class="btn btn-default" onclick="window.open('shopinfo/review_input', '', 'top=10px, left=10px, height=600 width=800')">리뷰 남기기</button> -->
		<button class="btn btn-info" data-ng-click="openModal()">후기 남기기</button>		
	</div>
</div>
<!-- review input modal -->
<div id="myModal" class="modal fade" role="dialog" >
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">        
        <h4 class="modal-title">후기 남기기</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" role="form">
		    <div class="form-group">
		      <label class="control-label col-sm-2" for="writer">작성자 :</label>
		      <div class="col-sm-10">
		        <input type="text" class="form-control" placeholder="이름을 입력해 주세요" data-ng-model="inputReviewValues.writername">
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="control-label col-sm-2" for="phone">연락처 :</label>
		      <div class="col-sm-10">          
		        <input type="text" class="form-control" id="phone" placeholder="전화번호를 입력해 주세요" data-ng-model="inputReviewValues.writerphone">
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="control-label col-sm-2" for="comment">내용 :</label>
		      <div class="col-sm-10">          
		        <textarea rows="5" id="comment" class="form-control" placeholder="내용을 입력해 주세요" data-ng-model="inputReviewValues.postcontent"></textarea>
		      </div>
		    </div>
		    <div class="form-group">
		      <label  class="control-label col-sm-2" for="sel1">평점 : </label>
		      <div class="col-sm-10">      
			    <label class="radio-inline">
			      	<input type="radio" value="1" data-ng-model="inputReviewValues.mark">
			      	1
		      	</label>
			    <label class="radio-inline">
			      <input type="radio" value="2" data-ng-model="inputReviewValues.mark">
			      2
			      </label>
			      <label class="radio-inline">
			      <input type="radio" value="3" data-ng-model="inputReviewValues.mark">
			      3
			      </label>
			      <label class="radio-inline">
			      <input type="radio" value="4" data-ng-model="inputReviewValues.mark">
			      4
			      </label>
			      <label class="radio-inline">
			      <input type="radio" value="5" data-ng-model="inputReviewValues.mark">
			      5
			      </label>
			     
		     </div>
		    </div>
	     </form>
      </div>
      <div class="modal-footer">
      	<button type="submit" class="btn btn-default" data-ng-click="inputReview()">저장</button>        
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
      </div>
    </div>

  </div>
</div>
<br>
<!-- review count ==0 -->
<div>
	<alert type="danger" data-ng-if="reviewList.length == 0">후기가 존재하지 않습니다.</alert>
</div>
<!-- review list -->
		<div class="panel panel-primary" data-ng-repeat="item in reviewList | orderBy: '-sid'">
			<div class="panel-heading">
				<div class="row">
					<div class="col-sm-4">
						{{item.writername}}
						&nbsp&nbsp<rating ng-model="item.mark" readonly="true"></rating>
					</div>
					<div class="col-sm-4"></div>
					<div class="col-sm-4" align="right">
						{{item.writedate}}
					</div>
				</div>		
			</div>	
			<div class="panel-body">
								
				{{item.postcontent}}
			</div>
			<div class="panel-footer">
				<div style=" margin-left: 10px;" data-ng-show="item.postreply!=null">
					<div class="row" style="border-top: 1px solid lightgray;">
						<div class="col-sm-4">
							reply
						</div>
						<div class="col-sm-8">{{item.postreply}}</div>						
					</div>					
				</div>			
			</div>
		</div>
	





</body>
</html>