<%@page import="kr.co.jhta.free.vo.Board"%>
<%@page import="kr.co.jhta.free.vo.BoardType"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.jhta.free.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<title>새글</title>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>새 글쓰기</h1>
	</div>
	
	<div class="row">
		<div class="col-xs-12 " >
		<%
			BoardDao boardDao = new BoardDao();
			List<BoardType> boardTypes = boardDao.getAllBoardType();
		%>
			<form class="well" action="add.jsp" method="post">
				<div class="form-group">
					<label>종류</label>
					<select class="form-control" name="type" style="width: 25%;">
					<%
						for (BoardType boardType : boardTypes) {
					%>
						<option value="<%=boardType.getNo() %>"> <%=boardType.getName() %></option>
					<%
						}
					%>
					</select>
				</div>
				<div class="form-group">
					<label>제목</label>
					<input type="text" class="form-control" name="title" />
				</div>
				<div class="form-group">
					<label>작성자</label>
					<input type="text" class="form-control" name="writer" />
				</div>
				<div class="form-group">
					<label>내용</label>
					<textarea class="form-control" rows="6" name="contents"></textarea>
				</div>
				<div class="form-group">
					<label>비밀번호</label>
					<input type="text" class="form-control" name="password" style="width: 25%;"/>
				</div>
				<div class="text-right">
					<a href="list.jsp" class="btn btn-default">취소</a>
					<input type="submit" class="btn btn-primary" value="등록" />
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>