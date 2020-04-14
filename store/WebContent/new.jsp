<%@page import="com.store.util.CookieUtils"%>
<%@page import="com.store.vo.Pagination"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.store.util.NumberUtils"%>
<%@page import="com.store.vo.Book"%>
<%@page import="java.util.List"%>
<%@page import="com.store.dao.BookDao"%>
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
		<h1>최신 도서</h1>
	</div>  
	
	<%
		BookDao bookDao = BookDao.getInstance();
	
		// 요청한 페이지 번호
		int pageNo = NumberUtils.stringToNumber(request.getParameter("pageno"), 1);
		// 총 데이터 개수
		int totalRows = bookDao.getNewBooksCount();
		
		// 페이징 처리에 필요한 값들을 제공하는 Pagination객체 생성
		Pagination pagination = new Pagination(pageNo, totalRows, 10);
		
		// 데이터 조회
		Map<String, Object> criteria = new HashMap<> ();
		criteria.put("begin", pagination.getBeginIndex());
		criteria.put("end", pagination.getEndIndex());
		
		List<Book> books = bookDao.getNewBooks(criteria);
		
		// 쿠키 조회하기
		Cookie[] cookies = request.getCookies();
		String recentBookNo = CookieUtils.getCookieValue(cookies, "recent");
		
	%>
	
	
	<div class="row">
		<div class="col-sm-9">
			<table class="table">
				<colgroup>
					<col width="45%">
					<col width="15%">
					<col width="20%">
					<col width="20%">
				</colgroup>
				<thead>
					<tr>
						<th>제목</th>
						<th>저자</th>
						<th>가격</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
				<%
					for (Book book : books) {
				%>
					<tr>
						<td><a href="detail.jsp?bookno=<%=book.getNo()%>&pageno=<%=pageNo %>"><%=book.getTitle() %></a></td>
						<td><%=book.getWriter() %></td>
						<td>
							<del><%=NumberUtils.numberWithComma(book.getPrice()) %> 원</del>
							<span><%=NumberUtils.numberWithComma(book.getDiscountPrice()) %> 원</span>
						</td>
						<td>
						<%
							if (loginedUser != null) {
						%>
							<a href="orderform.jsp?bookno=<%=book.getNo() %>" class="btn btn-primary btn-xs">바로구매</a>
							<a href="addcart.jsp?bookno=<%=book.getNo() %>" class="btn btn-success btn-xs">장바구니</a>
						<%
							} else {
						%>
							<a href="orderform.jsp" class="btn btn-default btn-xs disabled">바로구매</a>
							<a href="addcart.jsp" class="btn btn-default btn-xs disabled">장바구니</a>
						<%
							}
						%>						
						</td>
					</tr>
				<%
					}
				%>
				</tbody>
			</table>
		</div>
		<div class="col-sm-3">
			<h3>최근 본 상품</h3>
			<ul class="list-group">
				<%
					if (recentBookNo == null) {
				%>
					<li class="list-group-item">최근 본 책이 없습니다.</li>
				<%
					} else {
						Book book = bookDao.getBookByNo(NumberUtils.stringToNumber(recentBookNo));
					
				%>
					<li class="list-group-item">
						<a href="detail.jsp?bookno=<%=book.getNo() %>">
							<h4 class="list-group-item-heading"><%=book.getTitle() %></h4>
							<p class="list-group-item-text text-right"><small><%=book.getWriter() %></small></p>
							<p class="list-group-item-text">
								<del><%=NumberUtils.numberWithComma(book.getPrice()) %> 원</del> 
								<strong class="text-danger pull-right"><%=NumberUtils.numberWithComma(book.getDiscountPrice()) %> 원</strong> 
							</p>
						</a>
					
					</li>
				<%
					}
				%>
			</ul>
		</div>
	</div>
	
	<%@ include file="common/paging.jsp" %>
</div>
</body>
</html>
