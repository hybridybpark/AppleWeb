 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam02</title>

<style>
* {margin: 0px; padding: 0px}
#canvas{
	background: gray;
	width: 600px;
	height: 400px;
	position: relative;
	overflow : auto;
}
.inner-box{
	background: orange;
	width: 100px;
	height: 100px;
	
	position: absolute;
}

</style>


<script src="http://code.jquery.com/jquery-2.1.3.js"></script>
<script>

$(document).ready(function () {
	$('.inner-box').each(function (index) {
		$(this).css({
			left: index * 90,
			top: index*90
		});
		
	});
	
});

</script>

</head>
<body>

<h1>Test Header</h1>

<div id="canvas">
<div class="inner-box"></div>
<div class="inner-box"></div>
<div class="inner-box"></div>
<div class="inner-box"></div>
<div class="inner-box"></div>
</div>

<h1>Test Header</h1>

</body>
</html>