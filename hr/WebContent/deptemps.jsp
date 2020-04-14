<%@page import="kr.co.jhta.hr.vo.Employee"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.jhta.hr.dao.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서별 사원목록</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
	<h1>부서별사원 리스트</h1>
	
	<div>
		<a href="home.jsp">홈</a>
	</div>
	
	<table>
		<thead>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>소속부서명</th>
				<th>직종</th>
			</tr>
		</thead>
		<tbody>
		<%
			String dept = request.getParameter("dept");
			int deptId = Integer.parseInt(dept);
			
			EmployeeDao employeeDao = new EmployeeDao();
			List<Employee> employees= employeeDao.getEmployeeByDepartmentId(deptId);
			
				
			if (!employees.isEmpty()) {
				for (Employee emp : employees) {
				
		%>
			<tr>
				<td><%=emp.getId() %></td>
				<td><a href="emp.jsp?emp=<%=emp.getId()%>"><%=emp.getFirstName() %><%=emp.getLastName() %></a></td>
				<td><%=emp.getDepartment().getName() %>(<%=emp.getDepartment().getId() %>)</td>
				<td><%=emp.getJob().getId()%></td>
			</tr>
		<% 	
				}
			} else {
		%>
			<tr>
				<td colspan="4">해당 부서에 소속된 사원이 없습니다.</td>
			</tr>
		<%
			}
		%>
		</tbody>
	</table>
</body>
</html>