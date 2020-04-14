<%@page import="kr.co.jhta.free.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 글번호에 해당하는 글 정보 삭제
	int boardNo = Integer.parseInt(request.getParameter("no"));

	BoardDao boardDao = new BoardDao();
	boardDao.deleteBoard(boardNo);
	
	response.sendRedirect("list.jsp?result=delete");
%>