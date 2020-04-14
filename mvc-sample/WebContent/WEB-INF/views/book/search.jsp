<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>도서 검색</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<c:set var="menu" value="search" />
<%@ include file="../include/nav.jsp" %>
<body>
<div class="container">
	<div class="page-header">
		<h1>도서 검색</h1>
	</div>
	
	<p>${criteria }</p>
	
	<div class="row">
		<div class="col-sm-12 text-right">
			<form class="form-inline" method="get" action="search.html">
				<div class="form-group">
					<select class="form-control" name="opt">
						<option value=""   ${empty criteria.optionValue ? 'selected' : ''}> -- 선택하세요 --</option>
						<option value="T"  ${criteria.optionValue eq 'T' ? 'selected' : '' }> 제목</option>
						<option value="W"  ${criteria.optionValue eq 'W' ? 'selected' : '' }> 저자</option>
						<option value="P"  ${criteria.optionValue eq 'P' ? 'selected' : '' }> 가격</option>
					</select>
					<input type="text" class="form-control" name="keyword" value="${criteria.keywordValue }"/>
					<button type="submit" class="btn btn-primary">검색</button>
					<c:if test="${not empty message }">
						<span class="help-block" style="color:red;">${message }</span>
					</c:if>
				</div>
			</form>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<p>도서 조회 결과 : [<strong class="text-info">${size }</strong>] 개</p>
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
					 	<c:when test="${empty books }">
					 		<tr>
					 			<td colspan="4" class="text-center">
					 				조회된 책정보가 없습니다.
					 			</td>
					 		</tr>
					 	</c:when>
					 	<c:otherwise>
						<c:forEach var="book" items="${books }" varStatus="loop">
							<tr>
								 <td>${loop.count }</td>
								 <td><a href="../book/detail.html?bookNo=${book.no }">${book.title }</a></td>
								 <td>${book.writer }</td>
								 <td><fmt:formatNumber>${book.discountPrice }</fmt:formatNumber></td>
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
