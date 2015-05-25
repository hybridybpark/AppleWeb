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
	<ul data-role="listview" data-filter="true" data-filter-placeholder="Search..." data-filter-theme="b">
		<li data-role="list-divider">A</li>
		<li><a href="">AAAAAA</a></li>
		<li><a href="">AAAAAA</a></li>
		<li data-role="list-divider">B</li>
		<li><a href="">BBBB</a></li>
		<li><a href="">BBBB</a></li>
		<li data-role="list-divider">C</li>
		<li><a href="">CCCC</a></li>
		<li><a href="">CCCC</a></li>
	</ul>
</div>
</section>
<footer>
<jsp:include page="footer.jsp"></jsp:include>
</footer>
</body>

</html>