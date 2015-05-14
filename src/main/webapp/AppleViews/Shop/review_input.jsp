<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰 남기기</title>
</head>
<body>
	<div>		
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h2>리뷰 남기기</h2>
			</div>
			<div class="panel-body">
				<form class="form-horizontal" role="form">
			    <div class="form-group">
			      <label class="control-label col-sm-2" for="writer">작성자 :</label>
			      <div class="col-sm-10">
			        <input type="text" class="form-control" placeholder="이름을 입력해 주세요">
			      </div>
			    </div>
			    <div class="form-group">
			      <label class="control-label col-sm-2" for="pwd">비밀번호 :</label>
			      <div class="col-sm-10">          
			        <input type="password" class="form-control" id="pwd" placeholder="비밀번호를 입력해 주세요">
			      </div>
			    </div>
			    <div class="form-group">
			      <label class="control-label col-sm-2" for="comment">내용 :</label>
			      <div class="col-sm-10">          
			        <textarea rows="5" id="comment" class="form-control" placeholder="내용을 입력해 주세요"></textarea>
			      </div>
			    </div>
			    <div class="form-group">
			      <label  class="control-label col-sm-2" for="sel1">평점 : </label>
			      <div class="col-sm-10">
				      <label class="radio-inline">
					      <input type="radio" name="optradio"> 1
					    </label>
					    <label class="radio-inline">
					      <input type="radio" name="optradio"> 2
					    </label>
					    <label class="radio-inline">
					      <input type="radio" name="optradio"> 3
					    </label>
					    <label class="radio-inline">
					      <input type="radio" name="optradio"> 4
					    </label>
					    <label class="radio-inline">
					      <input type="radio" name="optradio"> 5
					    </label>
				     </div>
			     </div>
			    <div class="form-group">        
			      <div class="col-sm-offset-2 col-sm-10">
			        <button type="submit" class="btn btn-default">저장</button>
			        <button type="button" class="btn btn-default">취소</button>
			      </div>
			    </div>
			  </form>
			</div>
		</div>
	  
	  
	</div>
</body>
</html>