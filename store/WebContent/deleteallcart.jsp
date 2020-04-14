<%@page import="com.store.dao.CartDao"%>
<%@page import="com.store.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 로그인 여부 체크
	User user = (User) session.getAttribute("LOGINED_USER");
	if (user == null) {
		response.sendRedirect("loginform.jsp?fail=deny");
		return;
	}
	
	CartDao cartDao = CartDao.getInstance();
	cartDao.deleteAllMyCart(user.getNo());
	
	
	
	response.sendRedirect("cart.jsp");
%>