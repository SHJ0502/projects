<%@page import="kr.co.jhta.free.vo.Board"%>
<%@page import="kr.co.jhta.free.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<title>비밀번호 체크</title>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>비밀번호 체크</h1>
	</div>
	<%
		int no = Integer.parseInt(request.getParameter("no"));
		String password = request.getParameter("password");
		String job = request.getParameter("job");
		
		BoardDao boardDao = new BoardDao();
		Board board = boardDao.getBoardByNo(no);
	%>
	<div class="row">
		<div class="col-xs-12 well">
			<form class="horizontal-form" action="passwordcheck.jsp" method="post">
				<input type="hidden" name="no" value="<%=board.getNo() %>" />
				<input type="hidden" name="job" value="<%=job %>" />
				<div class="form-group">
					<label class="control-label col-xs-1">비밀번호</label>
					<div class="col-xs-6">
						<input type="text" class="form-control" name="password" />
					</div>
					<div class="col-xs-2"> 
						<input type="submit" class="btn btn-primary" value="확인"/>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>