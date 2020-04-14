<%@page import="java.util.List"%>
<%@page import="kr.co.jhta.free.dao.BoardDao"%>
<%@page import="kr.co.jhta.free.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<title>홈</title>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>자유게시판 홈</h1>
	</div>
	
	<div class="row">
		<div class="col-xs-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					최근 게시글
					<a href="list.jsp" class="btn btn-primary btn-xs pull-right">더보기</a>
				</div>
				
				
				<table class="table">
					<colgroup>
						<col width="10%"/>
						<col width="15%"/>
						<col width="*"/>
						<col width="20%"/>
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>종류</th>
							<th>제목</th>
							<th>작성자</th>
						</tr>
					</thead>
					<tbody>
					<%
					BoardDao boardDao = new BoardDao();
					List<Board> boards = boardDao.getRecentBoards();
					
					for (Board board : boards) {
				%>			
						<tr>
							<td><%=board.getNo() %></td>
							<td>[<%=board.getType().getName() %>]</td>
							<td><%=board.getTitle() %></td>
							<td><%=board.getWriter() %></td>
						</tr>
				<%
					}
				%>
						
					</tbody>
				</table>
			</div>
		</div>
		
		<div class="col-xs-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					추천수 많은 글
					<a href="list.jsp" class="btn btn-primary btn-xs pull-right">더보기</a>
				</div>
				<table class="table">
					<colgroup>
						<col width="10%"/>
						<col width="15%"/>
						<col width="*"/>
						<col width="20%"/>
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>종류</th>
							<th>제목</th>
							<th>작성자</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>[게임]</td>
							<td>디아블로 4 출시 확정 <span class="badge">10</span></td>
							<td>디아덕후</td>
						</tr>
						<tr>
							<td>1</td>
							<td>[게임]</td>
							<td>디아블로 4 출시 확정 <span class="badge">10</span></td>
							<td>디아덕후</td>
						</tr>
						<tr>
							<td>1</td>
							<td>[게임]</td>
							<td>디아블로 4 출시 확정 <span class="badge">10</span></td>
							<td>디아덕후</td>
						</tr>
						<tr>
							<td>1</td>
							<td>[게임]</td>
							<td>디아블로 4 출시 확정 <span class="badge">10</span></td>
							<td>디아덕후</td>
						</tr>
						<tr>
							<td>1</td>
							<td>[게임]</td>
							<td>디아블로 4 출시 확정 <span class="badge">10</span></td>
							<td>디아덕후</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</body>
</html>