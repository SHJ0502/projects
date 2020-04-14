<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Departments</title>
</head>
<body>
	<h1>삭제 결과창</h1>
<%
	String result = request.getParameter("result");
	if (result.equals("success")) {
%>
	<p>해당 부서정보가 삭제 되었습니다.</p>
<%
	} else if (result.equals("fail")){
%>
 	<p>해당 부서에 소속된 사원이 존재하기 때문에 부서정보를 삭제할 수 없습니다.</p>
<%
	}
%>
		<a href="home.jsp">홈</a>
</body>
</html>