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
	
<!-- Login JavaScript -->
   
<script src="/AppleWeb/js/Login/login.js"></script>

<!-- Login css -->

<link href="/AppleWeb/css/Login/login.css" rel="stylesheet">

<title>login.jsp</title>

</head>

<body class="container" data-ng-controller="loginCtrl">
	<div class="header" style="border: 1px solid gray;">
		<h1 class="text-primary">로그인</h1>
	</div>
<!-- 	<div class="row">		 -->
<!-- 		<div class="col-sm-offset-2 col-sm-4"> -->
<!-- 			<table style="border: 1px solid gray;"> -->
<!-- 				<tbody> -->
<!-- 					<tr> -->
<!-- 						<td width="50">아이디</td> -->
<!-- 						<td><input type="text" name="MemberId" size="13" -->
<!-- 							onkeypress="if(event.keyCode==13) checkVar();" -->
<!-- 							data-ng-model="login.businessnumber" -->
<!-- 							tabindex="1" class="input"></td> -->
<!-- 						<td width="75" align="right" rowspan="2"><a -->
<!-- 							href="" data-ng-click="doSubmit()"><img -->
<!-- 								src="/AppleWeb/Images/Login/btn_login.gif" border="0" -->
<!-- 								tabindex="5"></a></td> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<td>비밀번호</td> -->
<!-- 						<td><input type="password" name="MemberPw" -->
<!-- 							size="13" -->
<!-- 							onkeypress="if(event.keyCode==13) checkVar();" -->
<!-- 							data-ng-model="login.password" -->
<!-- 							tabindex="2" class="input"></td> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<td colspan="3" align="center" valign="bottom" -->
<!-- 							height="40"><span -->
<!-- 							style="padding: 0 6px 0 6px; color: #d4d6df;"></span><a -->
<!-- 							href="">비밀번호찾기</a><span -->
<!-- 							style="padding: 0 6px 0 6px; color: #d4d6df;">|</span><a -->
<!-- 							href=""><b>회원가입</b></a></td> -->
<!-- 					</tr> -->
<!-- 				</tbody> -->
<!-- 			</table>					 -->
<!-- 		</div> -->
<!-- 		<div class="col-sm-4"> -->
<!-- 			<img class="img-responsive" alt="" src="http://placehold.it/700x400">		 -->
<!-- 		</div> -->
<!-- 	</div> -->
	
					
						
					
	
	<table align = "center" height="40%" style="border: 1px solid gray;">
		<tbody>
			<tr>
				<td bgcolor="F5F5F5" align="center">
					<table style="border: 1px solid gray;">
						<tbody>
							<tr>
								<td align="center">
									<table style="border: 1px solid gray;">
										<tbody>
											<tr>
												<td align="center">
													<table style="border: 1px solid gray;">
														<tbody>
															<tr>
																<td width="50">아이디</td>
																<td><input type="text" name="MemberId" size="13"
																	onkeypress="if(event.keyCode==13) checkVar();"
																	data-ng-model="login.businessnumber"
																	tabindex="1" class="input"></td>
																<td width="75" align="right" rowspan="2"><a
																	href="" data-ng-click="doSubmit()"><img
																		src="/AppleWeb/Images/Login/btn_login.gif" border="0"
																		tabindex="5"></a></td>
															</tr>
															<tr>
																<td>비밀번호</td>
																<td><input type="password" name="MemberPw"
																	size="13"
																	onkeypress="if(event.keyCode==13) checkVar();"
																	data-ng-model="login.password"
																	tabindex="2" class="input"></td>
															</tr>
															<tr>
																<td colspan="3" align="center" valign="bottom"
																	height="40"><span
																	style="padding: 0 6px 0 6px; color: #d4d6df;"></span><a
																	href="">비밀번호찾기</a><span
																	style="padding: 0 6px 0 6px; color: #d4d6df;">|</span><a
																	href=""><b>회원가입</b></a></td>
															</tr>
															
														</tbody>
													</table>
												</td>
												<td>
													<img src="/AppleWeb/Images/Login/140620_02.jpg"/>
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