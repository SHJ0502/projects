<%@page import="kr.co.jhta.hr.vo.Department"%>
<%@page import="kr.co.jhta.hr.service.EmployeeService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 구성요소</title>
<style type="text/css">
	table {width: 100%;}
	table, th, td {
		border: 1px solid black;
		border-collapse: collapse;
	}
	th, td {
		padding: 7px;
		text-align: center;
	}
</style>
</head>
<body>
	<h1>스크립틀릿과 표현식</h1>
	
	<%
		EmployeeService service = new EmployeeService();
		List<Department> departments = service.getAllDepartments();
	%>
	<h3>부서 목록</h3>
	<table>
		<thead>
			<tr>
				<th>부서아이디</th>
				<th>부서명</th>
				<th>관리자 아이디</th>
				<th>지역 아이디</th>
			</tr>
		</thead>
		<tbody>
		<%
			for(Department dept : departments) {
				
		%>
			<tr>
				<td><%=dept.getId() %></td>
				<td><a href="emp.jsp?deptid=<%=dept.getId() %>"><%=dept.getName()%></a></td>
				<td><%=dept.getManagerId() %></td>
				<td><%=dept.getLocationId() %></td>
			</tr>
		<%
			}
		%>
		</tbody>
		
	</table>
</body>
</html>