<%@page import="kr.co.jhta.hr.dao.DepartmentDao"%>
<%@page import="kr.co.jhta.hr.vo.Location"%>
<%@page import="kr.co.jhta.hr.vo.Department"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	 String deptname = request.getParameter("deptname");
	 String loc = request.getParameter("loc");
	 int locationId = Integer.parseInt(loc);
	 
	 Department department = new Department();
	 department.setName(deptname);
	 
	 Location location = new Location();
	 location.setId(locationId);
	 department.setLocation(location);
	 
	 DepartmentDao departmentDao = new DepartmentDao();
	 departmentDao.insertDepartment(department);
	 
	 // 브라우저에게 재요청할 JSP페이지를 응답으로 제공하기
	 response.sendRedirect("home.jsp");
	 
%>