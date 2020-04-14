<%@page import="kr.co.jhta.free.vo.Board"%>
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
<title>목록</title>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>게시글 리스트</h1>
	</div>
	<%
		BoardDao boardDao = new BoardDao();
		List<Board> boards = boardDao.getAllBoards();	
	
		String result = request.getParameter("result");
		if("delete".equals(result)) {
	%>
	<div class="row">
	
		<div class="col-xs-12">
			<div class="alert alert-success">
				<strong>삭제 작업 완료</strong>
				해당글이 삭제되었습니다.
			</div>
		</div>
	</div>
	<%
		}
	%>
	
	<div class="row">
		<div class="col-xs-12">
			<table class="table">
				<colgroup>
					<col width="10%"/>
					<col width="12%"/>
					<col width="*"/>
					<col width="12%"/>
					<col width="12%"/>
				</colgroup>
				<thead>
					
					<tr>
						<th>번호</th>
						<th>종류</th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody>
					<%
					
						
						for (Board board : boards) {
					%>
					<tr>
						<td><%=board.getNo() %></td>
						<td><%=board.getType().getName() %></td>
						<td><a href="detail.jsp?no=<%=board.getNo() %>"><%=board.getTitle() %></a></td>
						<td><%=board.getWriter() %></td>
						<td><%=board.getCreateDate() %></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-12">
			<a href="form.jsp" class="btn btn-primary pull-right">새 글쓰기</a>
		</div>
	</div>
</div>
</body>
</html>