<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="vo.Emp"%>
<%@page import="java.util.List"%>
<%@page import="dao.HRDao"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	int deptId = Integer.parseInt(request.getParameter("dept"));

	HRDao dao = new HRDao();
	List<Emp> emps = dao.getEmployeesByDeptId(deptId);
	
	Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
	String jsonText = gson.toJson(emps);
	
	out.write(jsonText);
%>
