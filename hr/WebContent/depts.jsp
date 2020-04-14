<%@page import="kr.co.jhta.hr.vo.Employee"%>
<%@page import="kr.co.jhta.hr.vo.Department"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.jhta.hr.dao.DepartmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Departments</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
	<h1>부서 리스트</h1>
	
	<div>
		<a href="home.jsp">홈</a>
		<a href="deptform.jsp">부서 등록</a>
	</div>
	
	<table>
		<thead>
			<tr>
				<th>아이디</th>
				<th>부서명</th>
				<th>부서관리자</th>
				<th>사원등록</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
		<%
			DepartmentDao departmentDao = new DepartmentDao();
			List<Department> departments = departmentDao.getAllDepartmentsWithManager();
			
			for (Department dept : departments) {
				Employee manager = dept.getManager();
		%>
			<tr>
				<td><%=dept.getId() %></td>
				<td><a href="deptemps.jsp?dept=<%=dept.getId() %>"><%=dept.getName() %></a></td>
				<%
					if (manager.getId() != 0) {
				%>
				<td>
					<%=manager.getFirstName() %> <%=manager.getLastName() %>
					(<%=manager.getId() %>)
				</td>
				<%
					} else {
				%>
				<td>
					없음
				</td>
				<%
					}
				%>
				<td><a href="empform.jsp?dept=<%=dept.getId() %>">사원등록</a></td>
				<td>
					<a href="deldept.jsp?dept=<%=dept.getId() %>">삭제</a>
					<a href="modifydeptform.jsp?dept=<%=dept.getId() %>">수정</a>
				</td>
			</tr>
		<%
			}
		%>	
		</tbody>
	</table>
</body>
</html>