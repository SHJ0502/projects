<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP의 구성요소</title>
</head>
<body>
	<h1>스크립틀릿과 표현식</h1>
	
	<%
		// DB에서 홍길동 정보를 조회했다고 가정하자...
		String name = "홍길동";
		String id = "hong";
		String email = "hong@gmail.com";
		int age = 34;
		boolean isMarried = false;
		
		
	%>
	
	<h3>조회결과</h3>
	<dl>
		<dt>고객 이름</dt><dd><%=name %></dd>
		<dt>고객 아이디</dt><dd><%=id %></dd>
		<dt>고객 이메일</dt><dd><%=email %></dd>
		<dt>고객의 나이</dt><dd><%=age %></dd>
		<dt>고객의 결혼여부</dt><dd><%=isMarried %></dd>
	</dl>
</body>
</html>