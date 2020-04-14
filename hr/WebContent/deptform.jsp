<%@page import="kr.co.jhta.hr.vo.Location"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.jhta.hr.dao.LocationDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서등록 폼</title>
<%
	long time = System.currentTimeMillis();
%>
<link rel="stylesheet" type="text/css" href="resources/css/style.css?dummy=<%=time%>">
</head>
<body>
	<h1>부서등록 폼</h1>
	
	<div>
		<a href="home.jsp">홈</a>
	</div>
	
	<%
		LocationDao locationDao = new LocationDao();
		List<Location> locations = locationDao.getAllLocations();
		
	%>
	<form action="deptregister.jsp" method="post">
		<div>
			<label>부서명</label>
			<input type="text" name="deptname" />
		</div>
		<div>
			<label>부서 소재지</label>
			<select name="loc">
			
			<%
				for (Location loc : locations) {
			%>
				
				<option value="<%=loc.getId()%>"> <%=loc.getCity() %> (<%=loc.getCountryId() %>)</option>
			<%
				}
			%>
			</select>
		</div>
		<div>
			<input type="submit" value="등록" />
		</div>
	</form>
</body>
</html>