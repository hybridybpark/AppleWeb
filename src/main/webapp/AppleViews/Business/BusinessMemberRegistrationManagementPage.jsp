<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE>

<html data-ng-app="businessApp">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

<!-- Business JavaScript -->
   
<script src="/AppleWeb/js/Business/BusinessMemberRegistrationManagementPage.js"></script>

<!-- Business css -->

<link href="/AppleWeb/css/Business/business.css" rel="stylesheet">

<title>BusinessMemberRegistrationManagementPage.jsp</title>

</head>

<body class="container" data-ng-controller="registrationCtrl">
	
	
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
				</div>
				</div>
				</div>
			  <br>
		<div class="panel-body">
<!-- 		수정 할곳  -->
<!-- 		수정 할곳  -->
		<div align="center">
		<table>
			<tr >
				<th ></th>
				<td>
				
					<form role="form">
					메뉴 설명
					<div class="form-group">
					<textarea cols="50" rows="3" onclick="onLoadTextArea();" style="resize: none; border:1px solid lightgray; width: 500px; height: 100px;">Some long text…</textarea>
					<input type="submit" value="추가" name="sa" style="color:#000;font:12px/1 굴림, Gulim, sans-serif;"/>
					</div>
				</form>
				
			</td>
		</tr>
		</table>
		</div>
		<div class="panel-body">
		<div align="center">
		<table>
			<tr>
				<th></th>
				<td>
					<form role="form">
					메뉴 등록리스트
					<div class="form-group">
					<textarea cols="50" rows="3" onclick="onLoadTextArea();" style="resize: none; border:1px solid lightgray; width: 900px; height: 150px;">Some long text…</textarea>
					</div>
				</form>
			</td>
		</tr>
		</table>
		</div>
		</div>
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
			<div class="btn-group" role="group">			
				<button class="btn btn-success" data-ng-click="loginClick()">
					<span class=""></span>등록
				</button>
			</div>
			<div class="col-sm-4">				
			</div>			
		</div>
		</div>
	</div>
	</div>
</body>

</html>

