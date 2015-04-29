
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam01</title>
<script src="http://code.jquery.com/jquery-2.1.3.js"></script>
<script>
	function imgSize(which) {
		var width = eval("document." + which + ".width");
		var height = eval("document." + which + ".height");
		var temp = 0;
		var max_width = 600; // 이미지의 최대 크기     

		if (width > max_width) { // 이미지가 600보다 크다면 너비를 600으로 맞우고 비율에 맞춰 세로값을 변경한다.      
			height = height / (width / max_width);
			eval("document." + which + ".width = max_width");
			eval("document." + which + ".height = height");
		};
	};
</script>

</head>
<body>
	<table>
		<tr>
			<td width=100>사진</td>
			<td><img src="AppleWeb/image/col.jpg" border=0
				name="img"></td>
		</tr>
	</table>
	<script>
		imgSize("img");
	</script>
</body>

</body>
</html>