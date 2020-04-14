<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>장바구니리스트</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<c:set var="menu" value="cart" />
<%@ include file="../include/nav.jsp" %>
<div class="container">
	<div class="page-header">
		<h1>장바구니 리스트</h1>
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
						<th>제목</th>
						<th>가격</th>
						<th>수량</th>
						<th colspan="2">추가기능</th>
					</tr>
				</thead>
				<tbody>
				<c:choose>
					<c:when test="${empty cartItems }">
						<tr>
					 		<td colspan="4" class="text-center">
					 			장바구니에 상품이 존재하지 않습니다.
					 		</td>
					 	</tr>
					</c:when>
					<c:otherwise>
					<c:forEach var="cart" items="${cartItems }" >
						<tr>
							<td><a href="../book/detail.html?bookNo=${cart.book.no }">${cart.book.title }</a></td>
							<td>${cart.book.price }</td>
							<td>${cart.amount }</td>
							<td><a class="btn btn-default" href="/order/addOrder.html?bookNo=${cart.book.no }">바로구매</a></td>
							<td><a class="btn btn-default" href="/cart/deleteCart.html?cartNo=${cart.no }">삭제</a></td>
						</tr>
					</c:forEach>
					</c:otherwise>
				</c:choose>
				</tbody>
			</table>
			<a class="btn btn-default" href="/order/addOrder.html">전체구매</a>
			<a class="btn btn-default" href="/cart/allDeleteCart.html">전체삭제</a>
		</div>
	</div>
</div>
</body>
</html>
