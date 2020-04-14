<%@page import="kr.co.jhta.free.vo.Board"%>
<%@page import="kr.co.jhta.free.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		int no = Integer.parseInt(request.getParameter("no"));
		String password = request.getParameter("password");
		String job = request.getParameter("job");
		
		BoardDao boardDao = new BoardDao();
		Board board = boardDao.getBoardByNo(no);
		
		if (!board.getPassword().equals(password)) {
			response.sendRedirect("detail.jsp?no=" + no + "&result=invaildpwd");
			return;
		} 
		
		if ("delete".equals(job)) {
			response.sendRedirect("delete.jsp?no=" + no);
			return;
		} 
		
		if ("modify".equals(job)) {
			response.sendRedirect("modifyform.jsp?no=" + no);
			return;
		}
%>
</body>
</html>