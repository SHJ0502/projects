<%@page import="com.store.vo.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.store.dao.BookDao"%>
<%@page import="com.store.util.NumberUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int bookNo = NumberUtils.stringToNumber(request.getParameter("bookno"));
	int pageNo = NumberUtils.stringToNumber(request.getParameter("pageno"), 1);
	
	BookDao bookDao = BookDao.getInstance();
	Book book =bookDao.getBookByNo(bookNo);
	
	if (book == null) {
		response.sendRedirect("list.jsp");
		return;
	}
	
	ArrayList<Book> likeBooks = (ArrayList<Book>) session.getAttribute("like_books");
	
	if (likeBooks == null) {					// 첫 찜하기 할 때
		likeBooks = new ArrayList<Book>();
		likeBooks.add(book);
		
		session.setAttribute("like_books", likeBooks);
	} else {									// 찜하기를 이미 한 경우
		likeBooks.add(book);
	}
	
	response.sendRedirect("detail.jsp?bookno=" + bookNo + "&pageno=" + pageNo);
%>