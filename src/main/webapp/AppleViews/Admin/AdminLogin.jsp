<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<!DOCTYPE>

<html data-ng-app="adminApp">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
	
<!-- AdminLogin JavaScript -->
   
<script src="/AppleWeb/js/Admin/AdminLogin.js"></script>

<!-- AdminLogin css -->

<link href="/AppleWeb/css/Admin/AdminLogin.css" rel="stylesheet">

<title>AdminLogin.jsp</title>


</head>

<body class="container" data-ng-controller="adminlogin">
	<div class="header">
		<h1>관리자 로그인</h1>
	</div>

	<table align = "center" height="40%">
		<tbody>
			<tr>
				<td align="center">
					<table>
						<tbody>
							<tr>
								<td align="center">
									<table>
										<tbody>
											<tr>
												<td align="center">
													<table>
														<tbody>
															<tr>
																<td width="50">아이디</td>
																<td><input type="text" name="MemberId" size="13"
																	onkeypress="if(event.keyCode==13) checkVar();"
																	data-ng-model="adminlogin.adminid"
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
																	data-ng-model="adminlogin.adminpassword"
																	tabindex="2" class="input"></td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
</body>


</html>