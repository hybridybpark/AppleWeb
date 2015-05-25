<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- <link rel="stylesheet" -->
<!-- 	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"> -->
<!-- <script -->
<!-- 	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> -->
<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> -->
<!-- <script -->
<!-- 	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script> -->


<html>
<head>
<meta charset="UTF-8">
<!-- Menu css -->
<!-- <link href="/AppleWeb/css/Menu/menu.css" rel="stylesheet"> -->
<title>Menu</title>
</head>


<body class="container">
 
	<div >

		<div id="head" class="text-align: center">
			<div class="form-group">
				<div class="col-md-4">
					<h2>가게이름</h2>
				</div>
				<div class="col-md-4" style="padding : 20px;">
					<small>가게설명입니다.저희가게는끝내줘요</small>
				</div>
				<div class="col-md-4" style="padding : 20px;">
					<h4>☆☆☆☆☆</h4>
				</div>
			</div>
		</div>
		<hr>
		<hr>

		<div class="content">
			<h3>MENU-</h3>
			<table >
				<tr>
					<th><img src="/AppleWeb/Images/Menu/A2.jpg"
						style="width: 200px; height: auto;" hspace="50"></th>
					<th><img src="/AppleWeb/Images/Menu/col.jpg"
						style="width: 200px; height: auto;" hspace="50"></th>
					<th><img src="/AppleWeb/Images/Menu/A2.jpg"
						style="width: 200px; height: auto;" hspace="50"></th>
				</tr>
				<tr height="0">
					<td class="text" >가격</td>
					<td class="text" >가격</td>
					<td class="text" >가격</td>
				</tr>
				<tr>
					<td class="text" >5000</td>
					<td class="text" >6000</td>
					<td class="text" >7000</td>
				</tr>
				<tr>
					<th><img src="/AppleWeb/Images/Menu/A2.jpg"
						style="width: 200px; height: auto;" hspace="50"></th>
					<th><img src="/AppleWeb/Images/Menu/col.jpg"
						style="width: 200px; height: auto;" hspace="50"></th>
					<th><img src="/AppleWeb/Images/Menu/A2.jpg"
						style="width: 200px; height: auto;" hspace="50"></th>
				</tr>
				<tr>
					<td class="text">가격</td>
					<td class="text">가격</td>
					<td class="text">가격</td>
				</tr>
				<tr>
					<td class="text">5000</td>
					<td class="text">6000</td>
					<td class="text">7000</td>
				</tr>
				<tr>
					<th><img src="/AppleWeb/Images/Menu/A2.jpg"
						style="width: 200px; height: auto;" hspace="50"></th>
					<th><img src="/AppleWeb/Images/Menu/col.jpg"
						style="width: 200px; height: auto;" hspace="50"></th>
					<th><img src="/AppleWeb/Images/Menu/A2.jpg"
						style="width: 200px; height: auto;" hspace="50"></th>
				</tr>
				<tr>
					<td class="text">가격</td>
					<td class="text">가격</td>
					<td class="text">가격</td>
				</tr>
				<tr>
					<td class="text">5000</td>
					<td class="text">6000</td>
					<td class="text">7000</td>
				</tr>

			</table>

		</div>
	</div>
	<!-- 메뉴 디테일 정보 들어가는 부분 -->
	<div >
		<div class="content">
			<table>
				<tr>
					<th><img src="/AppleWeb/Images/Menu/A2.jpg" style="width: 200px; height: auto;" hspace="50"></th>
					<th class="text-align: center">메뉴정보: 고추가루를 팍팍 넣은 매운 갈비찜입니다.</th>
				</tr>
				<tr>
					<th>가격</th>
					<th>크기</th>
				</tr>
				<tr>
					<th>
						<input type="radio" name="rPrice" value="5000" />5000 
						<input type="radio" name="rPrice" value="6000" checked="checked" />6000
						<input type="radio" name="rPrice" value="7000" />7000 
					</th>
						<th>
						<input type="radio" name="rOption" value="big" />대
						<input type="radio" name="rOption" value="normal" checked="checked" />중
						<input type="radio" name="rOption" value="small" />소
					</th>
				</tr>
				
				</table>
<!-- 				<div style="border: 1px solid gold; padding: 10px; height: auto; min-height: 100px; overflow: auto;"> -->
				<div class="col-xs-6 col-sm-4"></div>
				<div class="col-xs-6 col-sm-4" style="padding: 10px; height: auto; min-height: 50px; overflow: auto;">
   						 <button class="btn btn-success">
   						 <span class="btn-put-cart">
       					 장바구니 담기
    					 </span>
						 </button>
						 
						 <button class="btn btn-default" type="button">
						 취소
						 </button>

				</div>
				<div class="col-xs-6 col-sm-4"></div>
			

		</div>
	</div>
	
</body>

</html>