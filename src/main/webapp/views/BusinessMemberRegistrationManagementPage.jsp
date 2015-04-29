<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE>

<html data-ng-app="myApp">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

<title>BusinessMemberRegistrationManagementPage.jsp</title>

<script type="text/javascript">

	var writeButton = document.createElement('button');
	writeButton.textContent = "Write";
	var wrapDiv = document.createElement('div');
	wrapDiv.style.textAlign = 'center';
	wrapDiv.appendChild(writeButton);
	document.body.appendChild(wrapDiv);

</script>


</head>

<body class="container" data-ng-controller="businessCtrl">
	<div class="header">
		<h1>사업자 페이지</h1>
	</div>
	<div>
		<ul class="nav nav-tabs nav-justified">
		  <li role="presentation" class="active"><a href="#">예약목록</a></li>
		  <li role="presentation"><a href="#">상점목록</a></li>		  
		  <li role="presentation"><a href="#">상점등록</a></li>		  
		  <li role="presentation"><a href="#">상점문의</a></li>		  
		</ul>
	</div>
	<br>
	
		<div class="panel panel-primary">
			<div class="panel-heading"><h4>상점등록</h4></div>
			<div class="panel-body">
			<div class="col-sm-4">
				<input type="text" data-ng-model="num" placeholder="상점 이름">
			</div> 
			<div class="col-sm-4">
				<input type="text" data-ng-model="num" placeholder="상점 주소">
				<input type="submit" value="주소찾기" name="sa" style="color:#000;font:12px/1 굴림, Gulim, sans-serif;" />
			</div>
			<div class="col-sm-4">
				<input type="text" data-ng-model="num" placeholder="대표 이미지">
				<input type="submit" value="찾아보기" name="sa" style="color:#000;font:12px/1 굴림, Gulim, sans-serif;" />
			</div>	
		</div>
		<div class="panel-body">
			<div  class="col-sm-4">
				<input type="text" data-ng-model="num" placeholder="메뉴 이미지">
				<input type="submit" value="찾아보기" name="sa" style="color:#000;font:12px/1 굴림, Gulim, sans-serif;" />
			</div>
			<div class="col-sm-4">
				<input type="text" data-ng-model="num" placeholder="메뉴 이름">
			</div> 
		</div>
		<div class="panel-body">
			<div class="search_bbs">
			<div class="col-sm-4">
					<select name="SearchItem" Id="SearchItem" title="검색구분">
						<option value="TOTAL" selected >옵션 선택</option>
						<option value="Size" >사이즈</option>
						<option value="CONTENT" >맛 종류</option>
					</select>
				</div>
			<div class="col-sm-4">
					<select name="SearchItem" Id="SearchItem" title="검색구분">
						<option value="TOTAL" selected >옵션 내용</option>
						<option value="TITLE" >제목</option>
						<option value="CONTENT" >내용</option>
					</select>
				</div>
			<div class="col-sm-4">
					<input type="text" class="input_text_bbs" title="검색" name="SearchText" id="SearchText" value="" placeholder="가격 입력" />
					<input type="submit" value="등록" name="sa" style="color:#000;font:12px/1 굴림, Gulim, sans-serif;"/>
				</div>
				</div>
			  <br>
		<div class="panel-body">
		<tr align="center" >
				<th>메뉴 설명</th>
				<td>
					<form role="form">
					<div class="form-group">
					<textarea name="content" class="textarea form-control" rows="5"></textarea>
					</div>
				</form>
			</td>
		</tr>
		<div class="panel-body">
			<tr>
				<th>메뉴 등록리스트</th>
				<td>
					<form role="form">
					<div class="form-group">
					<textarea name="content" class="textarea form-control" rows="5" ></textarea>
					</div>
				</form>
			</td>
		</tr>
		</div>
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
			<div class="btn-group" role="group">			
				<button class="btn btn-success" data-ng-click="loginClick()">
					<span class=""></span>메뉴 등록
				</button>
			</div>
			<div class="col-sm-4">				
			</div>			
		</div>
		</div>
	</div>
</body>

</html>

