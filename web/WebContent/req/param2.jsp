<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>param1이 쿼리스트링으로 전송한 요청 파라미터값 조회하기</h1>
	
	<%
		String value1 = request.getParameter("no");
		String value2 = request.getParameter("cat");
	%>
	
	<h3>클라이언트가 요청한 정보</h3>
	<p>
		번호 : <%=value1 %>
	</p>
	<p>
		카테고리 : <%=value2 %> 
	</p>
	
	<p>
		<a href="param1.jsp">되돌아가기</a>
	</p>
</body>
</html>