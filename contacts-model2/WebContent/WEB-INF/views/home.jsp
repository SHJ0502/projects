<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
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
		<h1>주소록 홈</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<table class="table">
				<colgroup>
					<col width="25%"/>
					<col width="25%"/>
					<col width="25%"/>
					<col width="25%"/>
				</colgroup>
				<thead>
					<tr>
						<th>순번</th>
						<th>이름</th>
						<th>전화번호</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody>
				<c:choose>
					<c:when test="${empty contacts }">
						<tr>
							<td colspan="4" class="text-center">등록된 연락처가 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="contact" items="${contacts }" varStatus="loop">
							<tr>
								<td>${loop.count }</td>
								<td><a href="detail.hta?no=${contact.no }">${contact.name }</a></td>
								<td>${contact.tel }</td>
								<td><fmt:formatDate value="${contact.createDate }" pattern="yyyy-MM-dd"/></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				</tbody>
			</table>
		</div>
	</div>
	<div class="row">
      <div class="col-sm-12 text-right">
         <a href="form.hta" class="btn btn-default">새 주소 등록</a>
      </div>
   </div>
</div>
</body>
</html>
