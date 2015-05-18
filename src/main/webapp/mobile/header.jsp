<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<div data-role="panel" data-display="overlay" id="panel" data-theme="b">
	<h1>APPLE</h1>
	<a href="" data-rel="close" data-role="ui-btn ui-btn-inline">Close Panel</a>
	<p>APPLE MOBILE VERSION</p>
	<ul data-role="listview">
		<li><a href="">홈</a></li>
		<li><a href="">로그인</a></li>
		<li><a href="">회원가입</a></li>
	</ul>
</div>
<div data-role="header" data-theme="b" data-position="fixed">
	<a href="#panel" data-icon="bars" class="ui-btn-left">MENU</a>
	<h1>Mobile</h1>
	<a href="index.jsp" data-icon="search" class="ui-btn-right">HOME</a>
	<div data-role="navbar">
			<ul>
				<li><a href="reservation.jsp" data-icon="grid">예약목록</a></li>
				<li><a href="search.jsp" data-icon="star">상점검색</a></li>
				<li><a href="qna.jsp" data-icon="alert">QnA</a></li>				
			</ul>			
	</div>
</div>
