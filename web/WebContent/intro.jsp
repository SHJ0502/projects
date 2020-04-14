<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My JSP</title>
</head>
<body>
	<h1>JSP 페이지</h1>
	<p>첫번째 웹 애플리케이션 개발을 축하합니다.</p>
	
	<%-- 선언부 --%>
	<%!
		private int x =10;
		
		public double randomNumber() {
			double number = Math.random();
			return number;
		}
	%>
	
	<!-- 스크립틀릿 -->
	<%
		int y = 10;
		Date now = new Date();
	%>
	<p>현재 날짜 및 시간 : <%=now %></p>
	<p>난수  : <%=randomNumber() %></p>
</body>
</html>