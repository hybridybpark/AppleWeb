<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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

// 게시판내 목록 출력
var myApp2 = angular.module('myApp2',[]);

myApp2.controller('myController2',function($scope,$http){	
	
	$http.get("http://localhost:8080/AppleWeb/Apple/qna/list.json").success(function(data) {
		$scope.list = data;
	});
	
	// 내용확인 및 덧글
    $scope.myVar = -1;
    $scope.toggle = function(index) {
    	if($scope.myVar != index){
        	$scope.myVar = index;
    	}else{
    		$scope.myVar = -1;		
    	}
    };
	
});

// 보안문자
document.domain = '';

function check(upCd) {
	if( upCd == "LOGON" ) {	//로그인
		if ( !parent.chkMainValue() ) return;
	}
		
	var f = document.chkFrm;
	if( f.answer.value == "" ) {
		alert("보안문자를 입력하세요.");
		f.answer.focus();
    	return ;
	}
	f.upCd.value = upCd;
	f.target = "iframe1";

	f.action = "captchaSubmit.jsp";

	f.submit();		

}


function tmpEnter(event){
	if(event.keyCode == 13) {
		parent.tmpSubmit();
	}
}		


function audio() {

	var f = document.chkFrm;

	f.target = "iframe1";

	f.action = "audioCaptcha.jsp";

	f.submit();	

}

function tmp() {

}

// 숫자만 입력받기
function onlyNumber(){
	var code = window.event.keyCode;
	
	if ((code > 34 && code < 41) || (code > 47 && code < 58) || (code > 95 && code < 106) || code == 8 || code == 9 || code == 13 || code == 46){
		window.event.returnValue = true;
		return;
	}
	window.event.returnValue = false;
}

//커서 이동
function checkSize(){
	if(document.chkFrm.answer.value.length >= 5){
		if(parent.document.getElementById("loginBtn")){
			parent.document.getElementById("loginBtn").focus();
		}
	}
}

// 입력받아서 승인
function doSubmit() {
	 alret("저장하시겠습니까?")
	if(boardFrm.title.value == "") {
		alert("제목을 입력해주세요")
		return;
	}
	if(boardFrm.content.value == "") {
		alert("내용을 입력하세요")
		return;
	}
	
	boardFrm.submit()
}


// 취소버튼 초기화
function reload() { 
	document.location.reload();     
}

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

<!-- Title-->
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
					<th>조회수</th>
				</tr>
			</thead>
			<tbody  data-ng-repeat="x in list">
			 	<tr align="center">			 	
			 		<td>{{$index + 1}}</td>
	    			<td><a href="" ng-click="toggle($index)">	    					
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
		  					<button class="btn">수정</button>	  						  					
		  							  						  					
		  					</div>	
		  					<div class="panel-body">
		  			  		&#8627<p>{{x.replycontent}}</p>
		  			 		</div>		  				
		  				</div>
		  				<div class="input-group">
		  					댓글 : <input type="text" size="40"><button class="btn">입력</button>
		  				</div>
		  				
		  			</td>	  			
				</tr>				
	  		</tbody> 			
		</table>
		
<!-- 		게시판 페이지 -->
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
	
	
<!-- 	문의하기 작성하는곳 -->
	<table style="width: 50%;" align="center">
  <form name="boardFrm" role="form" action="http://localhost:8080/AppleWeb/Apple/QnA.do">
<tbody>
	 <tr text-align="center">
			<th>작성자</th>
			<td><input type="text" name="pname" size="10"></td>
		</tr><br>
		
			<tr text-align="center">
			<th>전화번호</th>
			<td><input type="text" name="phone" size="20"></td>
		</tr><br>
		
	  <tr text-align="center">
			<th>제목</th>
			<td><input type="text" name="title" size="20"></td>
		</tr><br>
	
			<tr align="center" >
				<th>내용</th>
				<td>
					
					<div class="form-group">
					<textarea name="content" class="textarea form-control" rows="5" style="overflow:scroll;resize: none;width:100%;border:1 solid lightgray;overflow:visible;text-overflow:ellipsis;" rows=30></textarea>
					</div>
				
			</td>
		</tr>
	<tr>
		<th scope="row">비밀번호</th>
	  	 <td><input id="password" name="password" fw-filter="isFill" fw-label="비밀번호" fw-msg="" value="" type="password"  /></td>
	       </tr>
	       
	<tr class="">
		<th scope="row">자동발송금지<br/>보안문자</th>
	       <td>
	       <p>아래 이미지의 보안문자를 공백없이 입력해주세요.</p>
	         <img src="/AppleWeb/Images/QnA/untitled.png"/> 
	         <p><input id="captcha" name="captcha" fw-filter="isFill" fw-label="인증키" fw-msg="" class="inputTypeText" value="" type="text"  />
	         	<span class="btn btn_w_s"><span><a href="javascript:audio();" title="보안문자 인증 음성으로 듣기">음성으로 듣기</a></span></span>
				<span class="btn btn_w_s mt5"><span style="width:81px; text-align:center"><a href="javascript:location.reload();" title="새로고침">새로고침</a></span></span></p>
	       </td>
	    </tr>
	
	<tr class="agree ">
		<th scope="row">개인정보<br/>보호정책</th>
	       <td>
<textarea id="privacy_agreement" name="privacy_agreement" fw-filter="" fw-label="개인정보보호정책" fw-msg="" style="overflow:scroll;resize: none;width:100%;border:1px solid lightgray;overflow:visible;text-overflow:ellipsis;" rows=0 readonly>
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
				<input type="submit" value="글쓰기" onclick="doSubmit()">
				<input type="reset" value="취소" onclick="reload()">
			</td>
 	 	</tr>
 	 	</form>
	</table>
</section>
</body>
</html>