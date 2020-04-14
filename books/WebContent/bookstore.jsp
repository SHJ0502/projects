<%@page import="kr.co.jhta.bookstore.vo.Book"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.jhta.bookstore.service.BookstoreService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>북스토어 조회</title>
<style type="text/css">
	table {width: 100%;}
	table, th, td {
		border: 1px solid black;
		border-collapse: collapse;
	}
	th, td {
		padding: 7px;
		text-align: center;
	}
</style>
</head>
<body>
	<h1>북스토어 조회결과</h1>
	
	<h3>상품 목록</h3>
	
	<table>
		<thead>
			<tr>
				<th>책번호</th>
				<th>책제목</th>
				<th>글쓴이</th>
				<th>책가격</th>
				<th>할인가격</th>
				<th>매진현황</th>
				<th>입고날짜</th>
				<th>재고현황</th>
			</tr>
	
		</thead>
		<tbody>
			<%
			BookstoreService service = new BookstoreService();
			List<Book> books = service.getAllBooks();
		
			for (Book book : books) {
			%>
			<tr>
				<td><%=book.getNo() %></td>
				<td><%=book.getTitle() %></td>
				<td><%=book.getWriter() %></td>
				<td><%=book.getPrice() %></td>
				<td><%=book.getDiscountPrice() %></td>
				<td><%=book.getSoldout() %></td>
				<td><%=book.getCreateDate() %></td>
				<td><%=book.getStock() %></td>
			</tr>
			
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>



