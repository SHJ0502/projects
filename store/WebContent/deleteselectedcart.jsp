<%@page import="com.store.vo.User"%>
<%@page import="com.store.util.NumberUtils"%>
<%@page import="com.store.vo.CartItem"%>
<%@page import="com.store.dao.CartDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 로그인 여부 체크
	User user = (User) session.getAttribute("LOGINED_USER");
	if (user == null) {
		response.sendRedirect("loginform.jsp?fail=deny");
		return;
	}
	
	String[] cartNos = request.getParameterValues("cartno");
	
	CartDao cartDao = CartDao.getInstance();
	CartItem cartItem = new CartItem();
	for (String cartNo : cartNos) {
		cartItem.setNo(NumberUtils.stringToNumber(cartNo));
		cartItem.setUser(user);
		
		cartDao.deleteCartItem(cartItem);
		
	}
	
	response.sendRedirect("cart.jsp");
%>