 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam01</title>
<script src="http://code.jquery.com/jquery-2.1.3.js"></script>
<script>
	$(document).ready(function(){
		$('tr:odd').css('background','#F9F9F9');
		$('tr:even').css('background','#9F9F9F');
		$('tr:first').css('background','black').css('color','white');
		
	});


</script>

</head>
<body>
	<table>
		<tr><th>이름</th><th>혈액형</th><th>지역</th></tr>
		<tr><th>정의범</th><th>A형</th><th>서울</th></tr>
		<tr><th>서웅</th><th>B형</th><th>경기도</th></tr>
		<tr><th>성기용</th><th>C형</th><th>천안</th></tr>
		<tr><th>이정훈</th><th>D형</th><th>전주</th></tr>
	</table>
</body>
</html>