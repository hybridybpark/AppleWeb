<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<!DOCTYPE>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>

<title>login.jsp</title>


<style type="text/css">
.header {
	text-align: center;
}

.form-horizontal {
	margin-top: 100px;
}

h1 {
	margin-top: 100px;
	text-align: center;
}
</style>

</head>

<body class="container" data-ng-controller="loginCtrl">
	<div class="header">
		<h1>로그인</h1>
	</div>
	<!-- 	<div class="container"> -->
	<!-- 	<form class="form-horizontal" name="login"> -->
	<!-- 		<div class="form-group"> -->
	<!-- 			<label class="col-sm-6 control-label">사업자번호:</label> -->
	<!-- 			<div class="col-sm-3"> -->
	<!-- 				<input type="text" data-ng-model="num" placeholder="사업자번호"> -->
	<!-- 			</div> -->
	<!-- 		</div> -->

	<!-- 		<div class="form-group"> -->
	<!-- 			<label class="col-sm-6 control-label">비밀번호:</label> -->
	<!-- 			<div class="col-sm-3"> -->
	<!-- 				<input type="password" data-ng-model="pwd" placeholder="비밀번호"> -->
	<!-- 			</div> -->
	<!-- 		</div>	 -->
	<!-- 		<div class="row"> -->
	<!-- 			<div class="col-sm-4"></div> -->
	<!-- 			<div class="col-sm-4"> -->
	<!-- 			<div class="btn-group" role="group">	 -->
	<!-- 				<a href="index.jsp"> -->
	<!-- 					<img alt="" src="/AppleWeb/image/btn_login.gif"> -->
	<!-- 				</a>		 -->
	<!-- 				<button class="btn btn-success" data-ng-click="loginClick()" image="/AppleWeb/image/btn_login.gif"> -->
	<!-- <!-- 					<span class="glyphicon glyphicon-user"></span>로그인 -->
	-->
	<!-- 				</button> -->
	<!-- 				<button class="btn btn-success" data-ng-click="cancelClick()"> -->
	<!-- 					<span class="glyphicon glyphicon-user"></span>취소 -->
	<!-- 				</button> -->
	<!-- 			</div> -->
	<!-- 			<div class="col-sm-4">				 -->
	<!-- 			</div>			 -->
	<!-- 		</div> -->


	<!-- 	</form> -->
	<!-- 	</div> -->

	<table align = "center" height="40%">
		<tbody>
			<tr>
				<td bgcolor="F5F5F5" align="center">
					<table>
						<tbody>
							<tr>
								<td align="center">
									<table>
										<tbody>
											<tr>
												<td align="center">
													<table>
														<!-- 														<form name="form" action="/login_proc.asp" method="post"></form> -->
														<!-- 														<input type="hidden" name="returnPage" value="/main.asp"> -->
														<!-- 														<input type="hidden" name="loginType" value="main"> -->
														<tbody>
															<tr>
																<td width="50">아이디</td>
																<td><input type="text" name="MemberId" size="13"
																	onkeypress="if(event.keyCode==13) checkVar();"
																	data-ng-model="login.id"
																	tabindex="1" class="input"></td>
																<td width="75" align="right" rowspan="2"><a
																	href="" data-ng-click="loginClick()"><img
																		src="/AppleWeb/Images/Login/btn_login.gif" border="0"
																		tabindex="5"></a></td>
															</tr>
															<tr>
																<td>비밀번호</td>
																<td><input type="password" name="MemberPw"
																	size="13"
																	onkeypress="if(event.keyCode==13) checkVar();"
																	data-ng-model="login.pw"
																	tabindex="2" class="input"></td>
															</tr>
															<tr>
																<td colspan="3" align="center" valign="bottom"
																	height="40"><span
																	style="padding: 0 6px 0 6px; color: #d4d6df;"></span><a
																	href="/Mymenupan/member/member_pwsearch.asp">비밀번호찾기</a><span
																	style="padding: 0 6px 0 6px; color: #d4d6df;">|</span><a
																	href="/Mymenupan/member/member_check.asp"><b>회원가입</b></a></td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
								<td width="410" align="right"><table width="400" border="0"
										cellspacing="0" cellpadding="0">
									</table></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
</body>


</html>