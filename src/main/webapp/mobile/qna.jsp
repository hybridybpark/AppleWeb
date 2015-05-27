<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<!DOCTYPE>
<html>
<head>
<style type="text/css">
tr {
    border-bottom: 1px solid lightgray;
}
th {
    border-bottom: 1px solid #d6d6d6;
}

tr:nth-child(even) {
    background: #e9e9e9;
}
</style>
</head>

<body data-role="page">
<header>
<jsp:include page="header.jsp"></jsp:include>
</header>
<section>
<div data-role="content">
	<h3>QNA 페이지</h3>
	
	<table data-role="table" class="ui-responsive ui-shadow">
		
		<thead>
			<tr style="border-bottom: 1px solid lightgray;">
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>				
			</tr>
		</thead>
		<tbody>
			<tr style="border-bottom: 1px solid lightgray;">
				<td>1</td>
				<td>title</td>
				<td>writer</td>
			</tr>	
			<tr style="border-bottom: 1px solid lightgray;">
				<td>2</td>
				<td>title</td>
				<td>writer</td>
			</tr>
			<tr style="border-bottom: 1px solid lightgray;">
				<td>3</td>
				<td>title</td>
				<td>writer</td>
			</tr>
			<tr style="border-bottom: 1px solid lightgray;">
				<td>4</td>
				<td>title</td>
				<td>writer</td>
			</tr>
			<tr style="border-bottom: 1px solid lightgray;">
				<td>5</td>
				<td>title</td>
				<td>writer</td>
			</tr>
			<tr style="border-bottom: 1px solid lightgray;">
				<td>6</td>
				<td>title</td>
				<td>writer</td>
			</tr>
			<tr style="border-bottom: 1px solid lightgray;">
				<td>7</td>
				<td>title</td>
				<td>writer</td>
			</tr>
			<tr style="border-bottom: 1px solid lightgray;">
				<td>8</td>
				<td>title</td>
				<td>writer</td>
			</tr>		
		</tbody>
	</table>
</div>
</section>
<footer>
<jsp:include page="footer.jsp"></jsp:include>
</footer>
</body>

</html>