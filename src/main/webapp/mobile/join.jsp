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
	<h3>회원가입</h3>
	
	<label for="txt-businessnumber">사업자 번호</label>

        <input type="text" name="txt-businessnumber" id="txt-businessnumber" value="">

        <label for="txt-nickname">사업자명</label>

        <input type="text" name="txt-nickname" id="txt-nickname" value="">

        <label for="txt-email">이메일</label>

        <input type="text" name="txt-email" id="txt-email" value="">

        <label for="txt-password">비밀번호</label>

        <input type="password" name="txt-password" id="txt-password" value="">

        <label for="txt-password-confirm">비밀번호 확인</label>

        <input type="password" name="txt-password-confirm" id="txt-password-confirm" value="">
        
        <label for="txt-phone">연락처</label>

        <input type="text" name="txt-phone" id="txt-phone" value="">
        
        <div data-role="fieldcontain">
		    <fieldset data-role="controlgroup" data-type="horizontal">
		     	<legend>SMS(문자) 수신여부</legend>
		         	<input type="radio" name="radio-view" id="radio-view-a" value="Y"  />
		         	<label for="radio-view-a">YES</label>
		         	<input type="radio" name="radio-view" id="radio-view-b" value="N"  />
		         	<label for="radio-view-b">NO</label>		         	
		    </fieldset>
		</div>
		<div data-role="fieldcontain">
		    <fieldset data-role="controlgroup" data-type="horizontal">
		     	<legend>EMAIL(이메일) 수신여부</legend>
		         	<input type="radio" name="radio-view" id="radio-view-c" value="Y"  />
		         	<label for="radio-view-c">YES</label>
		         	<input type="radio" name="radio-view" id="radio-view-d" value="N"  />
		         	<label for="radio-view-d">NO</label>		         	
		    </fieldset>
		</div>
        

        <a href="#dlg-sign-up-sent" data-rel="popup" data-transition="pop" data-position-to="window" id="btn-submit" class="ui-btn ui-btn-b ui-corner-all mc-top-margin-1-5">회원가입</a>

        <div data-role="popup" id="dlg-sign-up-sent" data-dismissible="false" style="max-width:400px;">

            <div data-role="header">

                <h1>Almost done...</h1>

            </div>

            <div role="main" class="ui-content">

                <h3>Confirm Your Email Address</h3>

                <p>We sent you an email with instructions on how to confirm your email address. Please check your inbox and follow the instructions in the email.</p>

                <div class="mc-text-center"><a href="sign-in.html" class="ui-btn ui-corner-all ui-shadow ui-btn-b mc-top-margin-1-5">OK</a></div>

                     

            </div>

        </div>
	
</div>
</section>
<footer>
<jsp:include page="footer.jsp"></jsp:include>
</footer>
</body>

</html>