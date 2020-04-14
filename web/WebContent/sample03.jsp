<%@page import="kr.co.jhta.hr.service.EmployeeService"%>
<%@page import="kr.co.jhta.hr.vo.Employee"%>
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
	<h1>스크립트릿과 표현식</h1>
	
	<h3>사원 리스트</h3>
	<table>
		<thead>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>입사일</th>
				<th>업무</th>
				<th>급여</th>
				<th>커미션</th>
				<th>관리자아이디</th>
				<th>소속부서아이디</th>
			</tr>
		</thead>
		<tbody>
		<%
			EmployeeService service = new EmployeeService();
			List<Employee> employees = service.getAllEmployees();
			
			for (Employee emp : employees) {
		%>
			<tr>
				<td><%=emp.getId()%></td>
				<td><%=emp.getFirstName()%><%=emp.getLastName()%></td>
				<td><%=emp.getPhoneNumber() %></td>
				<td><%=emp.getEmail() %></td>
				<td><%=emp.getHireDate().getYear() %></td>
				<td><%=emp.getJobId() %></td>
				<td><%=emp.getSalary() %></td>
				<td><%=emp.getCommissionPct() %></td>
				<td><%=emp.getManagerId() %></td>
				<td><%=emp.getDepartmentId() %></td>
			</tr>
			
			<%
				}
			%>
			
			
		</tbody>
	</table>
</body>
</html>