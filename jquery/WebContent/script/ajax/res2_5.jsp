<%@page import="java.util.List"%>
<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="vo.Emp"%>
<%@page import="dao.HRDao"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	int empId = Integer.parseInt(request.getParameter("emp"));

	HRDao dao = new HRDao();
	
	List<Emp> emp = dao.getBabyById(empId);
	Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
	
	String jsonText = gson.toJson(emp);
	out.write(jsonText);
%>
