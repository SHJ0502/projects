<%@page import="kr.co.jhta.hr.dao.DepartmentDao"%>
<%@page import="kr.co.jhta.hr.vo.Location"%>
<%@page import="kr.co.jhta.hr.vo.Department"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");	
	
		int deptId = Integer.parseInt(request.getParameter("dept"));
		String deptName = request.getParameter("name");
		String loc = request.getParameter("loc");
		int locationId = Integer.parseInt(loc);
		
		Department department = new Department();
		department.setId(deptId);
		department.setName(deptName);
		
		Location location = new Location();
		location.setId(locationId);
		department.setLocation(location);
		
		DepartmentDao departmentDao = new DepartmentDao();
		departmentDao.updateDepartment(department);
		
		response.sendRedirect("home.jsp");
		
		
	%>
</body>
</html>