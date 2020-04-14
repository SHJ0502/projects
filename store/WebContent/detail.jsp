<%@page import="java.util.ArrayList"%>
<%@page import="com.store.util.DateUtils"%>
<%@page import="com.store.vo.Book"%>
<%@page import="com.store.dao.BookDao"%>
<%@page import="com.store.util.NumberUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>도서 대여점</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<%@ include file="common/nav.jsp" %>
<body>
<div class="container">
	<div class="page-header">
		<h1>도서 정보</h1>
	</div> 
	
	<%
		boolean isAlreadyLike = false;	
	
		int bookNo = NumberUtils.stringToNumber(request.getParameter("bookno"));
		int pageNo = NumberUtils.stringToNumber(request.getParameter("pageno"), 1);
		
		BookDao bookDao = BookDao.getInstance();
		Book book = bookDao.getBookByNo(bookNo);
		
		// 최근 본 상품을 쿠키에 담기
		Cookie cookie = new Cookie("recent", String.valueOf(bookNo));
		// 쿠키 만료시간 설정 7일
		cookie.setMaxAge(60*60*24*7);
		// 도메인 설정
		cookie.setDomain("localhost");
		// 쿠키에 대한 url경로 설정하기
		cookie.setPath("/store");
		// 쿠키를 클라이언트에 보내기
		response.addCookie(cookie);
		
		
		// 찜한 상품 조회
		ArrayList<Book> likeBooks = (ArrayList) session.getAttribute("like_books");
	%>
	
	<div class="row">
		<div class="col-sm-9">
			<h3>도서 상세 정보</h3>
			
			<table class="table table-bordered">
				<colgroup>
					<col width="20%">
					<col width="80%">
				</colgroup>
				<tr>
					<th>번호</th>
					<td><%=book.getNo() %></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><%=book.getTitle() %></td>
				</tr>
				<tr>
					<th>저자</th>
					<td><%=book.getWriter() %></td>
				</tr>
				<tr>
					<th>가격</th>
					<td><%=NumberUtils.numberWithComma(book.getPrice()) %></td>
				</tr>
				<tr>
					<th>할인가격</th>
					<td><strong class="text-primary"><%=NumberUtils.numberWithComma(book.getDiscountPrice()) %></strong></td>
				</tr>
				<tr>
					<th>남은 재고</th>
					<td><%=book.getStock() %></td>
				</tr>
				<tr>
					<th>절판여부</th>
					<td><%=book.getSoldout() %></td>
				</tr>
				<tr>
					<th>입고일</th>
					<td><%=DateUtils.dateToString(book.getCreateDate()) %></td>
				</tr>
			</table>
		</div>
		<div class="col-sm-3">
			<h3>내가 찜한 책</h3>	
			<ul class="list-group">
			<%
				if (likeBooks == null || likeBooks.isEmpty()) {
			%>
				<li class="list-group-item">찜한 책이 아직 없습니다.</li>
			<%
				} else {
					for (Book likeBook : likeBooks) {
						if (likeBook.getNo() == bookNo) {
							isAlreadyLike = true;
						}
			%>
				<li class="list-group-item">
					<a href="detail.jsp?bookno=<%=likeBook.getNo() %>"><%=likeBook.getTitle() %></a>
					<a href="unlike.jsp?bookno=<%=likeBook.getNo() %>" class="btn btn-danger btn-xs pull-right">삭제</a>
				</li>
			<%	
					}
				}
			%>
			</ul>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-9">
			<a href="" class="btn btn-success">바로구매</a>
			<a href="" class="btn btn-primary">장바구니 담기</a>
			<a href="like.jsp?bookno=<%=bookNo %>&pageno=<%=pageNo %> " class="btn btn-primary <%=isAlreadyLike ? "disabled" : ""%>">찜하기</a>
			<a href="new.jsp?pageno=<%=pageNo %>" class="btn btn-default pull-right">도서목록</a>
		</div>
	</div>
</div>
</body>
</html>
