<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE>

<html data-ng-app="mainApp">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> -->
<!-- <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script> -->
<!-- <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script> -->

<!-- Business JavaScript -->

<!-- <script src="/AppleWeb/js/Business/Business.js"></script> -->

<!-- Business css -->

<!-- <link href="/AppleWeb/css/Business/business.css" rel="stylesheet"> -->

<!-- <title>BusinessMemberRegistrationManagementPage.jsp</title> -->

</head>

<body class="container" data-ng-controller="businessCtrl">


	<div class="panel panel-primary">
		<div class="panel-heading">
			<h4>상점등록</h4>
		</div>
		<form name="boardFrm" role="form" action="http://localhost:8080/AppleWeb/Apple/Business.do">
			<div class="panel-body">
<!-- 				상점등록 -->				
					
						<table class="table"  style="margin-bottom: 0px;">
							<caption>상점 등록</caption>
							<tbody>
								<tr>
									<td class="col-sm-2"><label>상점이름</label></td>
									<td class="col-sm-10">										
										<input type="text" data-ng-model="Binfo.Bname" placeholder="상점 이름" name="SHOPNAME" class="form-control">										
									</td>
								</tr>
								<tr>
									<td>								
										<label>상점종류</label>
									</td>
									<td>								
										<select class="form-control" 
											data-ng-model="shopCategory" 
											data-ng-options="sc for sc in shopCategorys" 
											data-ng-change="shopCategoryChange(shopCategory)">
<!-- 											<option></option>																						 -->
										</select>
									</td>
								</tr>
								<tr>
									<td>								
										<label>체인점 선택</label>
									</td>
									<td>								
										<select class="form-control" >
											<option>없음</option>
											<option>STARBUCKS</option>																						
										</select>
									</td>
								</tr>
								<tr>
									<td>								
										<label>상점주소</label>
									</td>
									<td>								
										<div class="input-group">
											<input type="text" data-ng-model="Binfo.Baddress" placeholder="상점 주소" name="SHOPADDRESS" class="form-control">
											<span class="input-group-btn"> 
												<input type="button" value="주소찾기" style="color: #000; font: 12px/1 굴림, Gulim, sans-serif;" class="btn btn-default"/>
											</span>
										</div>								
									</td>
								</tr>
								<tr>
									<td>								
										<label>상점 이미지</label>
									</td>
									<td>								
										<div class="input-group">
											<input type="text" data-ng-model="Binfo.Bimage"	placeholder="대표 이미지" class="form-control"> 
											<span class="input-group-btn">
												<input type="button" value="찾아보기"	name="sa" style="color: #000; font: 12px/1 굴림, Gulim, sans-serif;" class="btn btn-default"/>
											</span>
										</div>								
									</td>
								</tr>
							</tbody>
							<tfoot>
								<tr><td colspan="2"><button class="btn btn-primary pull-left">상점등록</button></td></tr>
							</tfoot>							
						</table>
					<hr>
<!-- 				카테고리 등록 -->
						<table class="table">
							<caption>메뉴 종류 등록</caption>							
							<tbody>
								<tr>
									<td class="col-sm-2"><label>메뉴 종류 갯수</label></td>
									<td class="col-sm-10">										
										<select class="form-control" 
											data-ng-model="menuCategory" 
											data-ng-options="mc for mc in menuCategorys" 
											data-ng-change="menuCategoryChange(menuCategory)">																																
										</select>									
									</td>
								</tr>
								<tr data-ng-repeat = "i in [1,2,3,4,5] | limitTo:menuCategoryCount">
									<td class="col-sm-2"><label>종류 이름</label></td>
									<td class="col-sm-10">										
										<input type="text" class="form-control">										
									</td>
								</tr>
							</tbody>
							<tfoot>
								<tr><td colspan="2"><button class="btn btn-primary pull-left">메뉴 종류 등록</button></td></tr>
							</tfoot>
						</table>						
					<hr>
<!-- 				메뉴등록 -->
						
						<table class="table">
							<caption>메뉴등록</caption>							
							<tbody>
								<tr>
									<td class="col-sm-2"><label>메뉴 이름</label></td>
									<td class="col-sm-10">										
										<input type="text" data-ng-model="Binfo.Mname" placeholder="메뉴 이름" name="Mname" class="form-control">										
									</td>
								</tr>
								<tr>
									<td>								
										<label>메뉴종류</label>
									</td>
									<td>								
										<select class="form-control">
											<option></option>																															
										</select>
									</td>
								</tr>
								<tr>
									<td><label>메뉴 이미지</label></td>
									<td>										
										<div class="input-group">
											<input type="text" data-ng-model="Binfo.Mimage"	placeholder="메뉴 이미지" class="form-control"> 
											<span class="input-group-btn">
												<button type="button" value="찾아보기"	name="sa" class="btn btn-default" 
												style="color: #000; font: 12px/1 굴림, Gulim, sans-serif;">찾아보기</button>
											</span>
										</div>										
									</td>
								</tr>
								<tr>
									<td><label>메뉴 가격</label></td>
									<td>										
										<input data-ng-model="Binfo.Mprice" type="text"	 class="form-control" title="검색" name="Mprice"
									id="SearchText" value="" placeholder="가격 입력" />								
									</td>
								</tr>
								<tr>
									<td><label>메뉴 설명</label></td>
									<td>										
										<textarea rows="3" onclick="onLoadTextArea();"  class="form-control" 
										style="resize: none; border: 1px solid lightgray; width: 500px; height: 100px;">Some long text…</textarea>					
									</td>
								</tr>
								<tr>
									<td>								
										<label>옵션 갯수</label>
									</td>
									<td>								
										<select class="form-control" 
											data-ng-model="optionCategory" 
											data-ng-options="oc for oc in optionCategorys" 
											data-ng-change="optionCategoryChange(optionCategory)">																																	
										</select>
									</td>
									<tr data-ng-repeat="i in [1,2,3,4,5,6] | limitTo:optionCategoryCount">
										<td colspan="2">
											<div>
												<div class="col-sm-2">
													<label>옵션 이름</label>
												</div>
												<div class="col-sm-4">
													<input type="text" class="form-control">
												</div>													
												<div class="col-sm-2">
													<label>옵션 가격</label>
												</div>
												<div class="col-sm-4">
													<input type="text" class="form-control">
												</div>
											</div>																				
									</td>
								</tr>
								
							</tbody>
							<tfoot>
								<tr><td colspan="2"><button class="btn btn-primary pull-left">메뉴 등록</button></td></tr>
							</tfoot>
						</table>		
					<hr>		
<!-- 				메뉴리스트 -->	
						<table class="table">
							<caption>메뉴 목록</caption>							
							<thead>
								<tr>
									<td>번호</td><td>종류</td><td>이름</td><td>가격</td>
								</tr>	
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>category</td>
									<td>name</td>
									<td>price</td>
								</tr>
							</tbody>
						</table>	
			</div>
			<div class="panel-footer">
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4">
						<div class="btn-group" role="group">
							<button class="btn btn-success" data-ng-click="loginClick()">
								<span class=""></span>등록
							</button>
						</div>
						<div class="col-sm-4"></div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>

</html>

