<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title></title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h3>상품 상세정보</h3>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<table class="table">
				<colgroup>
					<col width="15%">
					<col width="*">
					<col width="12%">
					<col width="12%">
				</colgroup>
				<thead>
					<tr>
						<th>제목</th>
						<th>저자</th>
						<th>가격 (할인가격)</th>
						<th>재고수량</th>
						<th>등록날짜</th>
						<th>추가기능</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${detail.title }</td>
						<td>${detail.writer }</td>
						<td>${detail.price }</td>
						<td>${detail.stock }</td>
						<td><fmt:formatDate value="${detail.createDate }" pattern="yyyy.MM.dd"/></td>
						 <c:choose>
								 <c:when test="${empty LU }">
								 </c:when>
								 <c:otherwise>
								 	<td><a class="btn btn-default" href="/cart/addCart.html?bookNo=${detail.no }">담기</a></td>
								 	<td><a class="btn btn-default" href="/cart/addCart.html?bookNo=${detail.no }">바로구매</a></td>
								 </c:otherwise>
								 </c:choose>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>
