<%@page import="kr.co.jhta.hr.vo.Department"%>
<%@page import="kr.co.jhta.hr.dao.DepartmentDao"%>
<%@page import="kr.co.jhta.hr.vo.Employee"%>
<%@page import="kr.co.jhta.hr.dao.EmployeeDao"%>
<%@page import="kr.co.jhta.hr.vo.Job"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.jhta.hr.dao.JobDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 등록 폼</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css?dummy=1111">
</head>
<body>
	<h1>사원 등록 폼</h1>
	
	<%
		String dept = request.getParameter("dept");
		int departmentId = Integer.parseInt(dept);
		
		// 직종정보 조회
		JobDao jobDao = new JobDao();
		List<Job> jobs = jobDao.getAllJobs();
		
		// 지정된 부서에 소속된 사원 조회
		EmployeeDao employeeDao = new EmployeeDao();
		List<Employee> employees = employeeDao.getEmployeeByDepartmentId(departmentId);
		
		// 부서정보 조회
		DepartmentDao departmentDao = new DepartmentDao();
		List<Department> departments = departmentDao.getAllDepartmentsWithManager();
	%>
	
	<div>
		<a href="home.jsp">홈</a>
	</div>
	
	<form action="empregister.jsp" method="post">
		<input type="hidden" name="dept" value="<%=departmentId %>">
		
		<div>
			<label>성</label> <input type="text" name="firstname" />
		</div>
		<div>
			<label>이름</label> <input type="text" name="lastname" />
		</div>
		<div>
			<label>이메일</label> <input type="text" name="email" />
		</div>
		<div>
			<label>전화번호</label> <input type="text" name="phonenumber" />
		</div>
		<div>
			<label>직종</label>
			<select name="job">
			
			<%
				for (Job job : jobs) {
			%>
			
				<option value="<%=job.getId() %>"> <%=job.getId() %> (<%=job.getMin() %> ~ <%=job.getMax() %>) </option>
				
			<%
				}
			%>
			</select>
		</div>
		<div>
			<label>급여</label> <input type="text" name="salary" />
		</div>
		<div>
			<label>커미션</label> <input type="text" name="comm" />
		</div>
		<div>
			<label>상사</label>
			<select name="mgr">
			
			<%
				for (Employee emp : employees) {
			%>
			
				<option value="<%=emp.getId() %>"> <%=emp.getFirstName() %> <%=emp.getLastName() %></option>
				
			<%
				}
			%>
			</select>
		</div>
		<div>
			<label>소속부서</label>
			<select name="dept">
			
			<%
				for (Department d : departments) {
			%>
				<option value="<%=d.getId() %>" <%=d.getId()== departmentId ? "selected" : "disabled" %>> <%=d.getName() %> (<%=d.getId() %>)</option>
			<%
				}
			%>
			</select>
		</div>
		<input type="submit" value="사원등록" />
	</form>
</body>
</html>