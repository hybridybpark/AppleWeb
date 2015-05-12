<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>


<html>

<%-- <%@ include file="/WEB-INF/common.jspf" %> --%>
<!DOCTYPE>
<html>

<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

<title>회원 가입</title>

<style>
h1 {
	text-align: center;
}

.container{
	margin: 0px auto;
	padding: 20px;
}

</style>
<body data-ng-controller="joinCtrl" class="container">




	<h1>신규 회원 가입</h1>

	<hr>
	<div>
	<div>
		<a href=""> <img src="/AppleWeb/Images/Login/join/join.jpg"
			style="position:absolute; top:100px; left:100px; width: 200px; height:auto;" 
			/>
		</a>
		<a href=""> <img src="/AppleWeb/Images/Login/join/join2.jpg"
			style="position:absolute; top:185px; left:100px; width: 200px; height: auto;" 
			/>
		</a>
		<a href=""> <img src="/AppleWeb/Images/Login/join/join3.jpg"
			onmouseover="this.src='/AppleWeb/Images/Login/join/join3_1.jpg'"
			onmouseout="this.src='/AppleWeb/Images/Login/join/join3.jpg'"  
			style="position:absolute; top:225px; left:100px; width: 200px; height: auto;" 
			/>
		</a>
		<a href=""> <img src="/AppleWeb/Images/Login/join/join4.jpg"
			onmouseover="this.src='/AppleWeb/Images/Login/join/join4_1.jpg'"
			onmouseout="this.src='/AppleWeb/Images/Login/join/join4.jpg'"  
			style="position:absolute; top:260px; left:100px; width: 200px; height: auto;" 
			/>
		</a>
		<a href=""> <img src="/AppleWeb/Images/Login/join/join5.jpg"
			onmouseover="this.src='/AppleWeb/Images/Login/join/join5_1.jpg'"
			onmouseout="this.src='/AppleWeb/Images/Login/join/join5.jpg'"  
			style="position:absolute; top:295px; left:100px; width: 200px; height: auto;" 
			/>
		</a>
	</div>
	</div>

<hr>
<hr>
<hr>
<hr>
<hr>

	<div class="container">
	<form class="form-horizontal" role="form" method="post"
		action="javascript:alert( 'success!' );">
		<div class="form-group">
			<label for="provision" class="col-lg-2 control-label">회원가입약관</label>
			<div class="col-lg-10" id="provision">
				<textarea class="form-control" rows="8" style="resize: none">
약관동의
                    </textarea>
				<div class="radio">
					<label> <input type="radio" id="provisionYn"
						name="provisionYn" value="Y" autofocus="autofocus" checked>
						동의합니다.
					</label>
				</div>
				<div class="radio">
					<label> <input type="radio" id="provisionYn"
						name="provisionYn" value="N"> 동의하지 않습니다.
					</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="memberInfo" class="col-lg-2 control-label">개인정보취급방침</label>
			<div class="col-lg-10" id="memberInfo">
				<textarea class="form-control" rows="8" style="resize: none">
개인정보의 항목 및 수집방법
                    </textarea>
				<div class="radio">
					<label> <input type="radio" id="memberInfoYn"
						name="memberInfoYn" value="Y" checked> 동의합니다.
					</label>
				</div>
				<div class="radio">
					<label> <input type="radio" id="memberInfoYn"
						name="memberInfoYn" value="N"> 동의하지 않습니다.
					</label>
				</div>
			</div>
		</div>
		<div class="form-group" id="divId">
			<label for="inputId" class="col-lg-2 control-label">사업자명</label>
			<div class="col-lg-10">
				<input type="text" class="form-control onlyAlphabetAndNumber"
					id="id" data-rule-required="true" placeholder=" 사업자명 "
					maxlength="30">
			</div>
		</div>
		<div class="form-group" id="divId">
			<label for="inputId" class="col-lg-2 control-label">사업자번호</label>
			<div class="col-lg-10">
				<input type="text" class="form-control onlyAlphabetAndNumber"
					id="id" data-rule-required="true" placeholder="- 없이 숫자만 입력하세요."
					maxlength="30">
			</div>
		</div>
		<div class="form-group" id="divPassword">
			<label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
			<div class="col-lg-10">
				<input type="password" class="form-control" id="password"
					name="excludeHangul" data-rule-required="true" placeholder="패스워드"
					maxlength="30">
			</div>
		</div>
		<div class="form-group" id="divPasswordCheck">
			<label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드
				확인</label>
			<div class="col-lg-10">
				<input type="password" class="form-control" id="passwordCheck"
					data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
			</div>
		</div>

		<div class="form-group" id="divEmail">
			<label for="inputEmail" class="col-lg-2 control-label">이메일</label>
			<div class="col-lg-10">
				<input type="email" class="form-control" id="email"
					data-rule-required="true" placeholder="이메일" maxlength="40">
			</div>
		</div>
		<div class="form-group" id="divPhoneNumber">
			<label for="inputPhoneNumber" class="col-lg-2 control-label">휴대폰
				번호</label>
			<div class="col-lg-10">
				<input type="tel" class="form-control onlyNumber" id="phoneNumber"
					data-rule-required="true" placeholder="- 없이 숫자만 입력하세요."
					maxlength="11">
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmailReceiveYn" class="col-lg-2 control-label">이메일
				수신여부</label>
			<div class="col-lg-10">
				<label class="radio-inline"> <input type="radio"
					id="emailReceiveYn" name="emailReceiveYn" value="Y" checked>
					동의합니다.
				</label> <label class="radio-inline"> <input type="radio"
					id="emailReceiveYn" name="emailReceiveYn" value="N"> 동의하지
					않습니다.
				</label>
			</div>
		</div>
		<div class="form-group">
			<label for="inputPhoneNumber" class="col-lg-2 control-label">SMS
				수신여부</label>
			<div class="col-lg-10">
				<label class="radio-inline"> <input type="radio"
					id="smsReceiveYn" name="smsReceiveYn" value="Y" checked>
					동의합니다.
				</label> <label class="radio-inline"> <input type="radio"
					id="smsReceiveYn" name="smsReceiveYn" value="N"> 동의하지 않습니다.
				</label>
			</div>
		</div>
		<div class="form-group">
			<div class="col-lg-offset-2 col-lg-10">
				<button type="submit" class="btn btn-default">가입 요청</button>
			</div>
			<div class="col-lg-offset-2 col-lg-10">
				<button id="cancelClick" type="submit" class="btn btn-default">취소</button>
			</div>
		</div>

	</form>
	<hr/>
</div>

</body>
</html>
