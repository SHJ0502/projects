<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>새 책</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<c:set var="menu" value="new" />
<%@ include file="../include/nav.jsp" %>
<div class="container">
	<div class="page-header">
		<h1>새 책</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<table class="table">
				<colgroup>
					<col width="10%">
					<col width="*">
					<col width="12%">
					<col width="12%">
				</colgroup>
				<thead>
					<tr>
						<th>순번</th>
						<th>제목</th>
						<th>저자</th>
						<th>가격</th>
					</tr>
				</thead>
				<tbody>
					<!-- 
						최신 책이 없으면 "조회된 책정보가 없습니다."가 표시된다.
						책정보는 페이징처리 없이 전체 표시한다.
					 -->
					 <c:choose>
					 	<c:when test="${empty newBooks }">
					 		<tr>
					 			<td colspan="4" class="text-center">
					 				조회된 책정보가 없습니다.
					 			</td>
					 		</tr>
					 	</c:when>
					 	<c:otherwise>
						<c:forEach var="books" items="${newBooks }" varStatus="loop">
							<tr>
								 <td>${loop.count }</td>
								 <td><a href="/book/detail.html?bookNo=${books.no }">${books.title }</a></td>
								 <td>${books.writer }</td>
								 <td><fmt:formatNumber>${books.price }</fmt:formatNumber></td>
								 <c:choose>
								 <c:when test="${empty LU }">
								 </c:when>
								 <c:otherwise>
								 	<td><a class="btn btn-default" href="/cart/addCart.html?bookNo=${books.no }">담기</a></td>
								 	<td><a class="btn btn-default" href="/cart/addCart.html?bookNo=${books.no }">바로구매</a></td>
								 </c:otherwise>
								 </c:choose>
							 </tr>
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
