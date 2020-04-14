<%@page import="kr.co.jhta.hr.vo.Employee"%>
<%@page import="kr.co.jhta.hr.dao.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원상세정보</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<style type="text/css">
	th, td {padding: 15px;}
</style>
</head>
<body>
	<h1>사원 상세 정보</h1>
	<div>
		<a href="home.jsp">홈</a>
	</div>
	
	<table>
			<%
				String emp = request.getParameter("emp");
				int empId = Integer.parseInt(emp);
			
				EmployeeDao employeeDao = new EmployeeDao();
				Employee employee = employeeDao.getEmployeeById(empId);
				
				
			%>
	
		<tr>
			<th>사원아이디</th>
			<td><%=employee.getId() %></td>
			<th>사원이름</th>
			<td><%=employee.getFirstName() %> <%=employee.getLastName() %></td>
		</tr>
		
		
		<tr>
			<th>전화번호</th>
			<td><%=employee.getPhoneNumber() %></td>
			<th>이메일</th>
			<td><%=employee.getEmail() %></td>
		</tr>
		<tr>
			<th>급여</th>
			<td><%=employee.getSalary() %></td>
			<th>커미션포인트</th>
			<td><%=employee.getCommissionPct() %></td>
		</tr>
		<tr>
			<th>소속부서아이디</th>
			<td><%=employee.getDepartment().getId() == 0 ? "없음" : employee.getDepartment().getId() %></td>
			<th>소속부서명</th>
			<td><%=employee.getDepartment().getName() %></td>
		</tr>
		<tr>
			<th>직종아이디</th>
			<td><%=employee.getJob().getId() %></td>
			<th>직종 이름</th>
			<td><%=employee.getJob().getTitle() %></td>
		</tr>
	</table>
</body>
</html>