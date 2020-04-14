<%@page import="kr.co.jhta.hr.dao.EmployeeDao"%>
<%@page import="kr.co.jhta.hr.vo.Department"%>
<%@page import="kr.co.jhta.hr.dao.DepartmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원정보 삭제</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css?dummy=1111">
<body>
	<h1>사원정보 삭제</h1>
	
	<%
		String dept = request.getParameter("dept");
		int departmentId = Integer.parseInt(dept);
		
		// 해당 부서에 소속된 사원수 조회
		
		EmployeeDao employeeDao = new EmployeeDao();
		DepartmentDao departmentDao = new DepartmentDao();
		int department = employeeDao.getAllDepartmentsCount(departmentId);
		
		if (department != 0) {
				response.sendRedirect("deldeptcomplete.jsp?result=fail");
	
		} else {
				
				departmentDao.deleteDepartmentByid(departmentId);
				response.sendRedirect("deldeptcomplete.jsp?result=success");
	
		}
	%>
	
	
</body>
</html>