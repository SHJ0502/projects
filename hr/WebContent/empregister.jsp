<%@page import="kr.co.jhta.hr.dao.EmployeeDao"%>
<%@page import="kr.co.jhta.hr.vo.Department"%>
<%@page import="kr.co.jhta.hr.vo.Job"%>
<%@page import="kr.co.jhta.hr.vo.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String firstName = request.getParameter("firstname");
	String lastName = request.getParameter("lastname");
	String email = request.getParameter("email");
	String phoneNumber = request.getParameter("phonenumber");
	String jobId = request.getParameter("job");
	double salary = Double.parseDouble(request.getParameter("salary"));
	double commissionPct = Double.parseDouble(request.getParameter("comm"));
	int managerId = Integer.parseInt(request.getParameter("mgr"));
	int deptId = Integer.parseInt(request.getParameter("dept"));
	
	Employee employee = new Employee();
	employee.setFirstName(firstName);
	employee.setLastName(lastName);
	employee.setEmail(email);
	employee.setPhoneNumber(phoneNumber);
	employee.setSalary(salary);
	employee.setCommissionPct(commissionPct);
	
	Job job = new Job();
	job.setId(jobId);
	employee.setJob(job);
	
	Employee manager = new Employee();
	manager.setId(managerId);
	employee.setManager(manager);
	
	Department department = new Department();
	department.setId(deptId);
	employee.setDepartment(department);
	
	// Dao를 사용해서 DB에 저장
	EmployeeDao employeeDao = new EmployeeDao();
	employeeDao.insertEmployee(employee);
	
	
	// 리다이렉트 URL 응답으로 제공
	response.sendRedirect("home.jsp");
%>