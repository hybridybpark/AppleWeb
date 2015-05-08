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

<!-- QnA JavaScript -->
   
<script src="/AppleWeb/js/QnA/qna.js"></script>

<!-- QnA css -->

<link href="/AppleWeb/css/QnA/qna.css" rel="stylesheet">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<title>QnAWriting.jsp</title>

</head>

<!-- Title-->
<body data-ng-controller="myController2">
	<header class="container">
		<h1 align="center">질문작성</h1>
	</header>
	
	<section class="container">
<!-- 	문의하기 작성하는곳 -->
	<form name="boardFrm" role="form" action="http://localhost:8080/AppleWeb/Apple/QnA.do">
	<div align="center">
		<table style="width: 50%">
	<tbody>
	 	<tr>
			<th>작성자</th>
			<td><input type="text" name="pname" size="10"></td>
		</tr>
		
		<tr>
			<th>전화번호</th>
			<td><input type="text" name="phone" size="20"></td>
		</tr>
		
	  	<tr>
			<th>제목</th>
			<td><input type="text" name="title" size="20"></td>
		</tr>
	
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
	  	 <td><input id="password" name="password" type="password" /></td>
	       </tr>
	       
	<tr class="">
		<th scope="row">자동발송금지<br/>보안문자</th>
	       <td>
	       <p>아래 이미지의 보안문자를 공백없이 입력해주세요.</p>
	         <img src="/AppleWeb/Images/QnA/untitled.png"/> 
	         <p><input id="captcha" name="captcha" placeholder=" 보안문자 " class="inputTypeText" value="" type="text"  />
	         	<span class="btn btn_w_s"><span><a href="javascript:audio();" title="보안문자 인증 음성으로 듣기">음성으로 듣기</a></span></span>
				<span class="btn btn_w_s mt5"><span style="width:81px; text-align:center"><a href="javascript:location.reload();" title="새로고침">새로고침</a></span></span></p>
	       </td>
	    </tr>
	
		<tr class="agree ">
			<th scope="row">개인정보<br/>보호정책</th>
		       <td>
				<textarea id="privacy_agreement" name="privacy_agreement" style="overflow:scroll;resize: none;width:100%;border:1px solid lightgray;overflow:visible;text-overflow:ellipsis;" rows=0 readonly>
■ 개인정보의 수집·이용 목적
서비스 제공 및 계약의 이행, 구매 및 대금결제, 물품배송 또는 청구지 발송, 회원관리 등을 위한 목적 
■ 수집하려는 개인정보의 항목이름, 주소, 연락처, 이메일 등 
■ 개인정보의 보유 및 이용 기간
회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외없이 해당정보를 파기합니다.</textarea><br/>
개인정보취급방침에 대하여 동의하십니까? 
							<input id="privacy_agreement_radio0" name="privacy_agreement_radio" value="Y" type="radio"  /><label for="privacy_agreement_radio0" >동의함</label>
							<input id="privacy_agreement_radio1" name="privacy_agreement_radio" value="N" type="radio" checked="checked"  /><label for="privacy_agreement_radio1" >동의안함</label>                    
							</td>
					 	</tr>
					</tbody>
						<tr align="center">
					   		<td colspan="2"> <br>
								<input type="button" value="글쓰기" onClick="doSubmit()" data-ng-click="doSubmit()">
								<input type="reset" value="취소" onclick="reload()">
							</td>
				 	 	</tr>
					</table>
				</div>
			</form>
		</section>
	</body>
</html>