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
<title>게시글 보기</title>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>게시글 보기</h1>
	</div>
	<%
		int boardNo = Integer.parseInt(request.getParameter("no"));
		BoardDao boardDao = new BoardDao();
		Board b = boardDao.getBoardByNo(boardNo);
		
		String result = request.getParameter("result");
		if ("invaildpwd".equals(result)) {
	%>
	
	<div class="row">
		<div class="col-xs-12">
			<div class="alert alert-danger">
				<strong>수정/삭제 작업 오류</strong>
				비밀번호가 일치하지 않습니다.
			</div>
		</div>
	</div>
	<%
		}
		
		if ("modify".equals(result)) {
	%>
		<div class="row">
			<div class="col-xs-12">
				<div class="alert alert-success">
					<strong>수정작업 완료</strong>
					게시글 수정작업이 완료되었습니다.
				</div>
			</div>
		</div>
	<%
		}
	%>
	
	<div class="row">
		<div class="col-xs-12">
			<table class="table table-bordered">
				<colgroup>
					<col width="15%"/>
					<col width="35%"/>
					<col width="15%"/>
					<col width="35%"/>
				</colgroup>
				<tr>
					<th class="active">번호</th>
					<td><%=b.getNo() %></td>
					<th class="active">등록일</th>
					<td><%=b.getCreateDate() %></td>
				</tr>
				<tr>
					<th class="active">종류</th>
					<td><%=b.getType().getName() %></td>
					<th class="active">추천수</th>
					<td><%=b.getLikes() %></td>
				</tr>
				<tr>
					<th class="active">제목</th>
					<td colspan="3"><%=b.getTitle() %></td>
				</tr>
				<tr>
					<th class="active">작성자</th>
					<td colspan="3"><%=b.getWriter() %></td>
				</tr>
				<tr>
					<th class="active">내용</th>
					<td colspan="3"><textarea rows="6" class="form-control"><%=b.getContents() %></textarea> </td>
				</tr>
			</table>
		</div>
	</div>
	<div>
		<a href="passwordform.jsp?no=<%=b.getNo() %>&job=modify" class="btn btn-warning">수정</a>
		<a href="passwordform.jsp?no=<%=b.getNo() %>&job=delete" class="btn btn-danger">삭제</a>
		<a href="list.jsp" class="btn btn-primary pull-right">목록</a>
	</div>
</div>
</body>
</html>