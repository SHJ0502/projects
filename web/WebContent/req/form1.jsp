<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>요청 파라미터 연습</h1>
	
	<h3>요청 파라미터로 폼 입력값 전달하기</h3>
	<form action="form2.jsp" method="post">
		이름 : <input type="text" name="username" /><br />
		메일 : <input type="text" name="mail" /><br />
		전화 : <input type="text" name="tel" /><br />
		<input type="submit" value="제출" />
	</form>
</body>
</html>