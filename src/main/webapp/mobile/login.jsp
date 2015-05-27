<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<!DOCTYPE>
<html>
<head>

</head>

<body data-role="page">
<header>
<jsp:include page="header.jsp"></jsp:include>
</header>
<section>
<div data-role="content">
	<h3>로그인</h3>
	
	<label for="txt-number">사업자 번호</label>

            <input type="text" name="txt-number" id="txt-email" value="">

            <label for="txt-password">비밀번호</label>

            <input type="password" name="txt-password" id="txt-password" value="">

            <fieldset data-role="controlgroup">

                <input type="checkbox" name="chck-rememberme" id="chck-rememberme" checked="">

                <label for="chck-rememberme">기억하기</label>

            </fieldset>

            <a href="#dlg-invalid-credentials" data-rel="popup" data-transition="pop" data-position-to="window" id="btn-submit" class="ui-btn ui-btn-b ui-corner-all mc-top-margin-1-5">로그인</a>

            

            <div data-role="popup" id="dlg-invalid-credentials" data-dismissible="false" style="max-width:400px;">

                <div role="main" class="ui-content">

                    <h3 class="mc-text-danger">로그인 실패!</h3>

                    <p>정확한 정보를 적으셨는지 확인해 보세요.</p>

                    <div class="mc-text-center"><a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-b mc-top-margin-1-5">OK</a></div>

                </div>

            </div>
	
</div>
</section>
<footer>
<jsp:include page="footer.jsp"></jsp:include>
</footer>
</body>

</html>