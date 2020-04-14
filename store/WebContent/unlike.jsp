<%@page import="java.util.Iterator"%>
<%@page import="com.store.vo.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.store.util.NumberUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int bookNo = NumberUtils.stringToNumber(request.getParameter("bookno"));

	ArrayList<Book> likeBooks = (ArrayList<Book>) session.getAttribute("like_books");
	
	if (likeBooks == null || likeBooks.isEmpty()) {
		response.sendRedirect("detail.jsp?bookno=" + bookNo);
		return;
	}
	
	
	/*
		Iterator<E>는 List, Set의 각 요소를 반복처리해주는 객체다.
			boolean hasNext() 	: 다음번에 추출가능한 요소가 있으면 true를 반환한다.
			E		next()		: 반복 순서에 해당하는 객체를 반환한다.
			void	remove()	: 반복 순선에 해당하는 객체를 삭제한다.
		
		* 모든 List계열, Set계열 객체는 iterator() 메소드를 실행하면
			해당 콜렉션 객체에 저장된 요소를 반복처리하는 Iterator객체를 반환한다.
	*/
	Iterator<Book> it = likeBooks.iterator();
	while (it.hasNext()) {
		Book likeBook = it.next();
		if (likeBook.getNo() == bookNo) {
			it.remove();
		}
	}
	
	response.sendRedirect("detail.jsp?bookno=" + bookNo);
%>
