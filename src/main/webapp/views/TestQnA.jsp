<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글쓰기</title>
</head>
<body>
<!-- 본문 시작 -->
<h1>글쓰기</h1>
<form action="../servlet/BoardWriter" method="post">
<table>
<tr>
	<td>제목</td>
	<td><input type="text" name="title" size="50"></td>
</tr>
<tr>
	<td colspan="2">
		<textarea name="content" rows="20" cols="100"></textarea>
	</td>
</tr>
<tr>
	<td colspan="2">
		<input type="submit" value="전송">
		<input type="reset" value="취소">
		<a href="list.jsp">목록</a>
	</td>
</tr>
</table>
<td>21</td>
                        <td class="subject"> <a href="/product/provider/review_read.xml?no=232871&spread_flag=T">굿굿굿굿!</a> <img src="http://img0001.echosting.cafe24.com/front/type_b/image/common/icon_hit.gif"  alt="HIT" /></td>
                        <td> 최수환</td>
                        <td>2015-03-18</td>
                        <td>542</td>
                        <td><img src="http://img.echosting.cafe24.com/design/skin/mono/ico_point5.gif" alt="5점"/></td>
                    </tr>
<tr class="xans-record-">
</form>  
<!-- 본문 끝 -->
</body>
</html>