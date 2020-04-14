<%@page import="kr.co.jhta.free.dao.BoardDao"%>
<%@page import="kr.co.jhta.free.vo.BoardType"%>
<%@page import="kr.co.jhta.free.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String type = request.getParameter("type");
	int typeNo = Integer.parseInt(request.getParameter("typeNo"));
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String contents = request.getParameter("contents");
	String pwd = request.getParameter("password");
	
	
	Board board = new Board();
	board.setTitle(title);
	board.setWriter(writer);
	board.setContents(contents);
	board.setPassword(pwd);
	
	BoardType boardType = new BoardType();
	boardType.setName(type);
	boardType.setNo(typeNo);
	board.setType(boardType);
	
	
	BoardDao boardDao = new BoardDao();
	boardDao.insertBoard(board);
	
	
	// 새글 DB에 저장하기
	response.sendRedirect("list.jsp");
	
%>