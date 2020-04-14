<%@page import="kr.co.jhta.free.vo.BoardType"%>
<%@page import="kr.co.jhta.free.vo.Board"%>
<%@page import="kr.co.jhta.free.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	// 수정된 글 정보를 DB에 반영하기
	
	int typeNo = Integer.parseInt(request.getParameter("type"));
	int boardNo = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String contents = request.getParameter("textarea");
	
	BoardDao boardDao = new BoardDao();
	Board board = boardDao.getBoardByNo(boardNo);
	
	board.setTitle(title);
	board.setContents(contents);
	board.setWriter(writer);
	board.setPassword(password);
	
	BoardType type = new BoardType();
	type.setNo(typeNo);
	board.setType(type);
	
	boardDao.upadateBoard(board);
	
	response.sendRedirect("detail.jsp?no=" + boardNo + "&result=modify");
%>