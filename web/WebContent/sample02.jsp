<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
		List<String> names = new ArrayList<>();
		names.add("이순신");
		names.add("김유신");
		names.add("강감찬");
		names.add("을지문덕");
		names.add("권율");
		names.add("이성계");
		names.add("최영");
	%>
	
	<h3>한국의 위대한 장군들</h3>
	<ul>
	<%
		for (String name : names) {
	%>
		<li><%=name %></li>
	
	<%
		}
	%>
	</ul>
</body>
</html>