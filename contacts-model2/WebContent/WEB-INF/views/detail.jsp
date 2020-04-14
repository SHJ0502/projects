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
		<h1>주소록 정보</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<table class="table table-bordered">
				<colgroup>
					<col width="14%">
					<col width="36%">
					<col width="14%">
					<col width="36%">
				</colgroup>
				<thead>
					<tr>
						<th>구분</th>
						<th>값</th>
						<th>구분</th>
						<th>값</th>
					</tr>
				</thead>
				<tbody>
				<c:choose>
					<c:when test="${empty contact }">
						<tr>
							<td colspan="4" class="text-center">등록된 연락처 정보가 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<tr>
							<th>번호</th>
							<td>${contact.no }</td>
							<th>등록일</th>
							<td><fmt:formatDate value="${contact.createDate }" pattern="yyyy-MM-dd"/></td>
						</tr>
						<tr>
							<th>이름</th>
							<td>${contact.name }</td>
							<th>연락처</th>
							<td>${contact.tel }</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>${contact.email }</td>
							<th>팩스번호</th>
							<td>${contact.fax }</td>
						</tr>
						<tr>
							<th>주소</th>
							<td colspan="3">${contact.address }</td>
						</tr>
					</c:otherwise>
				</c:choose>
				</tbody>
			</table>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
		<c:if test="${not empty contact }">
			<a href="modifyform.hta?no=${contact.no }" class="btn btn-warnning">수정</a>
			<a href="delete.hta?no=${contact.no }" class="btn btn-danger">삭제</a>
		</c:if>
		
		
			<a href="home.hta" class="btn btn-default pull-right">홈</a>
		</div>
	</div>
</div>
</body>
</html>
