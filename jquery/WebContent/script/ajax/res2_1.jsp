<%@page import="com.google.gson.Gson"%>
<%@page import="vo.Dept"%>
<%@page import="java.util.List"%>
<%@page import="dao.HRDao"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%

	// 부서목록 조회
	HRDao dao = new HRDao();
	List<Dept> depts = dao.getAllDepts();
	
	// 조회된 부서목록(List<Dept>)를 json표기법의 텍스트로 변환<>
	// List<Dept> ----> [{"id":"10", "name":"Administration"}, {"id":"20", "name":"Marketing"}]
	Gson gson = new Gson();
	String jsonText = gson.toJson(depts);
	
	// JSON 텍스트를 응답으로 제공
	out.write(jsonText);

%>