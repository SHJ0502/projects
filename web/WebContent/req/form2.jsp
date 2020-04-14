<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>form2에 폼입력으로 전송한 요청 파라미터값 조회하기</h1>
	
	<%
		request.setCharacterEncoding("utf-8");
	
		String value1 = request.getParameter("username");
		String value2 = request.getParameter("mail");
		String value3 = request.getParameter("tel");
	%>
	
	<h3>클라이언트가 서버로 전송한 값</h3>
	<p>이름 : <%=value1 %></p>
	<p>메일주소 : <%=value2 %></p>
	<p>전화번호 : <%=value3 %></p>
	
	<p><a href="form1.jsp">되돌아가기</a></p>
</body>
</html>