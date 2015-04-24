<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf" %> --%>

<!DOCTYPE>

<html data-ng-app="myApp2">

<head>

<meta charset="UTF-8">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<script type="text/javascript">

var myApp2 = angular.module('myApp2',["ngAnimate","ngSanitize"]);

myApp2.controller('myController2',function($scope,$http){	
	
	$http.get("http://www.w3schools.com/angular/customers.php")
	 .success(function (response) {$scope.names = response.records;});
	
	$scope.itemClick = function(index) {
		$scope.message = "Number : "+(index+1)+ " Name : "+$scope.names[index].Name
										      + " Country : "+$scope.names[index].Country;
// 											  + " Date : "+$scope.;
// 											  &tc='+new Date().getTime();
		alert($scope.names[index].Name+" clicked");
		alert($scope.message);
	};
    $scope.myVar = -1;
    $scope.toggle = function(index) {
    	if($scope.myVar != index){
        	$scope.myVar = index;
    	}else{
    		$scope.myVar = -1;		
    	}
    };
	
});

</script>
<style type="text/css">
	
	th {
		text-align: center;
	}

	textarea {
		height: 300px;
	}
	
</style>
<title>Q&A.jsp</title>

</head>

<body data-ng-controller="myController2">
	<header class="container">
		<h1 align="center">문의 게시판</h1>
		
		
	
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
				</tr>
			</thead>
			<tbody data-ng-repeat="x in names">
			 	<tr align="center">
			 		<td>{{$index +1}}</td>
	    			<td><a href="" ng-click="toggle($index)">{{ x.Name }}</a></td>
	    			<td>{{ x.Country }}</td>
<!-- 	    			<td>{{ x.Date }}</td> -->
	  			</tr>
	  			<tr data-ng-show="myVar == $index"><td>test</td></tr>
	  		</tbody> 			
		</table>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
		<nav align="center">
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
	
	<table style="width: 50%;" align="center">
  
<tbody>

	  <tr text-align="center">
			<th>제목</th>
			<td><input type="text" name="title" size="50"></td>
		</tr>
			<tr align="center" >
				<th>내용</th>
				<td>
		<!-- 		<div class="textarea" style="overflow:scroll; text-align:center; width:500px; height:150px; padding:10px; background-color:white;"> -->
					<form role="form">
					<div class="form-group">
		<!-- 			<textarea name="content" class="textarea form-control" rows="5" style="overflow:scroll;"></textarea> -->
					<textarea style=width: 300px; rows="8"></textarea>
					</div>
				</form>
			</td>
		</tr>
	<tr>
		<th scope="row">비밀번호</th>
	  	 <td><input id="password" name="password" fw-filter="isFill" fw-label="비밀번호" fw-msg="" value="" type="password"  /></td>
	       </tr>
<!-- 	<tr class="radioType displaynone"> -->
<!-- 		<th scope="row">비밀글설정</th> -->
<!-- 	     <td><input id="secure0" name="secure" fw-filter="isFill" fw-label="비밀글설정" fw-msg="" value="F" type="radio" checked="checked"  /><label for="secure0" >공개글</label> -->
<!-- 	<input id="secure1" name="secure" fw-filter="isFill" fw-label="비밀글설정" fw-msg="" value="T" type="radio"  /><label for="secure1" >비밀글</label></td> -->
<!-- 	   	  </tr> -->
	<tr class="">
		<th scope="row">자동발송금지<br/>보안문자</th>
	       <td>
	         <img src="/AppleWeb/image/untitled.png"  />                        
	         <p><input id="captcha" name="captcha" fw-filter="isFill" fw-label="인증키" fw-msg="" class="inputTypeText" value="" type="text"  /> 영문, 숫자 조합을 공백없이 입력하세요(대소문자구분)</p>
	       </td>
	    </tr>
	<tr class="agree ">
		<th scope="row">개인정보<br/>보호정책</th>
	       <td>
<textarea id="privacy_agreement" name="privacy_agreement" fw-filter="" fw-label="개인정보보호정책" fw-msg="" >
	■ 개인정보의 수집·이용 목적
	서비스 제공 및 계약의 이행, 구매 및 대금결제, 물품배송 또는 청구지 발송, 회원관리 등을 위한 목적 
	■ 수집하려는 개인정보의 항목이름, 주소, 연락처, 이메일 등 
	■ 개인정보의 보유 및 이용 기간
	회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외없이 해당정보를 파기합니다.</textarea><br/>
	개인정보취급방침에 대하여 동의하십니까? 
			<input id="privacy_agreement_radio0" name="privacy_agreement_radio" fw-filter="isFill" fw-label="개인정보보호정책" fw-msg="" value="T" type="radio"  /><label for="privacy_agreement_radio0" >동의함</label>
			<input id="privacy_agreement_radio1" name="privacy_agreement_radio" fw-filter="isFill" fw-label="개인정보보호정책" fw-msg="" value="F" type="radio" checked="checked"  /><label for="privacy_agreement_radio1" >동의안함</label>                    
			</td>
	 	</tr>
	</tbody>
		<tr align="center">
	   		<td colspan="2"> <br>
				<input type="submit" value="글쓰기">
				<input type="reset" value="취소">
			</td>
 	 	</tr>
	</table>
</section>
</body>
</html>