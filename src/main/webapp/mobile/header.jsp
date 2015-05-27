<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<div data-role="panel" data-display="overlay" id="panel" data-theme="a">
	<h1>APPLE</h1>
	<a href="" data-rel="close" data-role="ui-btn ui-btn-inline">닫기</a>
	<p>APPLE MOBILE VERSION</p>
	<ul data-role="listview">
		<li><a href="index.jsp">홈</a></li>
		<li><a href="login.jsp">로그인</a></li>
		<li><a href="join.jsp">회원가입</a></li>
	</ul>
</div>
<div data-role="header" data-theme="a" data-position="fixed">
	<a href="#panel" data-icon="bars" class="ui-btn-left">MENU</a>
	<h1>Apple Mobile</h1>
	<a href="index.jsp" data-icon="search" class="ui-btn-right">HOME</a>
	<div data-role="navbar">
			<ul>
				<li><a href="reservation.jsp" data-icon="grid">나의 예약목록</a></li>
				<li><a href="search.jsp" data-icon="star">상점검색</a></li>
				<li><a href="qna.jsp" data-icon="alert">QnA</a></li>				
			</ul>			
	</div>
</div>
