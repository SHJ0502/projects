<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>주문내역</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<c:set var="menu" value="order" />
<%@ include file="../include/nav.jsp" %>
<div class="container">
<div class="page-header">
		<h1>구매내역 리스트</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<table class="table">
				<colgroup>
					<col width="20%">
					<col width="*">
					<col width="30%">
					<col width="10%">
				</colgroup>
				<thead>
					<tr>
						<th>주문번호</th>
						<th>제목</th>
						<th>글쓴이</th>
						<th>가격</th>
					</tr>
				</thead>
				<tbody>
				<c:choose>
					<c:when test="${empty orders }">
						<tr>
					 		<td colspan="4" class="text-center">
					 			구매내역이 존재하지 않습니다.
					 		</td>
					 	</tr>
					</c:when>
					<c:otherwise>
					<c:forEach var="order" items="${orders }" >
						<c:forEach var="item" items="${order.orderItems }">
							<tr>
							<td>${order.no }</td>
							<td>${item.book.title }</td>
							<td>${item.book.writer }</td>
							<td>${item.book.discountPrice }</td>
						</tr>
						</c:forEach>
					</c:forEach>
					</c:otherwise>
				</c:choose>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>
