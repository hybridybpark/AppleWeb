<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ include file="/WEB-INF/common.jspf"%> --%>

<!DOCTYPE>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="initial-scale=1.0, width=device-width" />

<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>


<title>Mobile Home</title>

</head>

<body>
<header>
<jsp:include page="header.jsp"></jsp:include>
</header>



<div data-role="navbar">		
		<select name="category" data-inline="true">
			<option value="all">ALL</option>
			<option value="cafe">CAFE</option>
			<option value="korean">한식</option>
			<option value="chinese">중식</option>
			<option value="western">양식</option>
			<option value="japanese">일식</option>
			<option value="flour">분식</option>			
		</select>	
					
	</div>



	<div data-role="content">
		<div class="ui-grid-a">
			<div class="ui-block-a"><img alt="Shops" src="http://placehold.it/100&text=Shops"><h3>name</h3></div>
			<div class="ui-block-b"><img alt="Shops" src="http://placehold.it/100&text=Shops"><h3>name</h3></div>
			<div class="ui-block-a"><img alt="Shops" src="http://placehold.it/100&text=Shops"><h3>name</h3></div>
			<div class="ui-block-b"><img alt="Shops" src="http://placehold.it/100&text=Shops"><h3>name</h3></div>
			<div class="ui-block-a"><img alt="Shops" src="http://placehold.it/100&text=Shops"><h3>name</h3></div>
			<div class="ui-block-b"><img alt="Shops" src="http://placehold.it/100&text=Shops"><h3>name</h3></div>
			<div class="ui-block-a"><img alt="Shops" src="http://placehold.it/100&text=Shops"><h3>name</h3></div>
			<div class="ui-block-b"><img alt="Shops" src="http://placehold.it/100&text=Shops"><h3>name</h3></div>
		</div>
	</div>

<footer>
<jsp:include page="footer.jsp"></jsp:include>
</footer>

</body>

</html>