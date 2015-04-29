 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam01</title>
<script src="http://code.jquery.com/jquery-2.1.3.js"></script>
<script>
$(document).ready(function () {
	//변수선언
	var array= [
	            { name: 'Woong', link:'http://www.naver.com'},
	            { name: 'ebjEONG', link:'http://www.google.com'},
	            { name: 'wwwww', link:'http://www.fnatic.com'},
				{ name: 'escape', link:'http://www.filekuki.com'}];
	
	// $.each 메서드 실행
	// each(index,item)란 두번째 매개변수로 넣은 함수의 매개변수 index는 배열의 인덱스 또는 객체의 키를 의미.
	// item은 해당 인덱스나 키가 가진 값을 의미.
	// 따라서 위의 item에있는 namer과 link속성으로 링크를 만들어 body테그의 뒷부분에 집어넣는다.
	
	$.each(array,function(index, item) {
		//변수를 선언
		var output = '';
		
		//문자열생성
		output += '<a href="' + item.link+'">';
		output += ' <h1>'+ item.name+ '</h1>';
		output += '</a>';
		
		//body의 뒷부분에 집어넣습니다.
		document.body.innerHTML += output;
	
	});
});


</script>

</head>
<body>

</body>
</html>