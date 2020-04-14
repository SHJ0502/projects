<%@page import="com.store.vo.User"%>
<%@page import="com.store.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("userid");
	String password = request.getParameter("userpwd");
	
	UserDao userDao = UserDao.getInstance();
	
	User user = userDao.getUserById(id);
	
	if (user == null) {
		response.sendRedirect("loginform.jsp?fail=invalid");
		return;
	}
	
	if (!user.getPassword().equals(password)) {
		response.sendRedirect("loginform.jsp?fail=invalid");
		return;
	}
	
	// 세션에 사용자 정보 저장 <--- 서버가 클라이언트의 정보를 보관하게 함
	session.setAttribute("LOGINED_USER", user);
	// 메인 페이지로 이동
	response.sendRedirect("index.jsp");
%>