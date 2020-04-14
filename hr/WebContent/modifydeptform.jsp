<%@page import="kr.co.jhta.hr.dao.LocationDao"%>
<%@page import="kr.co.jhta.hr.vo.Location"%>
<%@page import="kr.co.jhta.hr.vo.Department"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.jhta.hr.dao.DepartmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서 정보 수정</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css?dummy=1112">
</head>
<body>
	<h1>부서 정보 수정</h1>
	<%
		String dept = request.getParameter("dept");
		int departmentId = Integer.parseInt(dept);
		
		DepartmentDao departmentDao = new DepartmentDao();
		LocationDao locationDao = new LocationDao();
		List<Department> departments = departmentDao.getAllDepartmentsWithManager();
		Department dep = departmentDao.getDepartmentById(departmentId);
		List<Location> locations = locationDao.getAllLocations();
		
			
		
		
		
	%>
	<form action="modifydept.jsp" method="post">
	<div>
		<label>부서아이디</label>

		<input type="text" name="dept" value="<%=dep.getId() %>" readonly="readonly" />
	
	</div>
	<div>
		<label>부서명</label>

		<input type="text" name="name" value="<%=dep.getName() %>" />

	</div>
	<div>
		<label>소재지</label>
		<select name="loc">
		<%
			for (Location loc : locations) {
		%>
				<option value="<%=loc.getId() %>"<%=loc.getId() == dep.getLocation().getId() ? "selected" : "" %>> <%=loc.getCity() %> (<%=loc.getCountryId() %>)</option>
		<%
			}
		%>
		</select>
	</div>
	<div>
			<input type="submit" value="변경" />
		</div>
	</form>
</body>
</html>