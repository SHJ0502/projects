<%@page import="com.store.dao.CartDao"%>
<%@page import="com.store.vo.Book"%>
<%@page import="com.store.vo.CartItem"%>
<%@page import="com.store.util.NumberUtils"%>
<%@page import="com.store.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 로그인여부 체크
	User user = (User) session.getAttribute("LOGINED_USER");
	if (user == null) {
		response.sendRedirect("loginform.jsp?fail=deny");
		return;
	}
	
	int bookNo = NumberUtils.stringToNumber(request.getParameter("bookno"));
	
	// 사용자가 동일한 책을 장바구니에 담았는지 확인하기
	CartItem item = new CartItem();
	Book book = new Book();
	book.setNo(bookNo);	
	item.setBook(book);	// 책번호를 담고있는 Book 객체
	item.setUser(user);	// 로그인한 사용자
	
	CartDao cartDao = CartDao.getInstance();
	CartItem savedCartItem = cartDao.getCartItem(item);
	
	if (savedCartItem != null) {								// 장바구니에 동일한 책이 존재
		savedCartItem.setAmount(savedCartItem.getAmount() + 1);
		cartDao.updateCartItem(savedCartItem);
	} else {													// 장바구니에 동일한 책이 없음
		cartDao.insertCartItem(item);
	}
	
	response.sendRedirect("cart.jsp");
%>