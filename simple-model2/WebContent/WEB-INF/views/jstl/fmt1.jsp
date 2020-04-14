<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<h1>fmt:formatNumber, fmt:formatDate</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-6">
			<h3>fmt:formatNumber 사용</h3>
			<table class="table">
				<thead>
					<tr>
						<th>이름</th>
						<th>아이디</th>
						<th>포인트</th>
						<th>가입일</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="user" items="${users }">
					<tr>
						<td>${user.name }</td>
						<td>${user.id }</td>
						<td class="text-right"><fmt:formatNumber value="${user.point }"/></td>
						<td>${user.createDate }</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="col-sm-6">
			<h3>fmt:formatNumber 사용</h3>
			<table class="table">
				<thead>
					<tr>
						<th>이름</th>
						<th>국어</th>
						<th>영어</th>
						<th>수학</th>
						<th>총점</th>
						<th>평균</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="score" items="${scores }">
					<tr>
						<td>${score.name }</td>
						<td>${score.kor }</td>
						<td>${score.eng }</td>
						<td>${score.math }</td>
						<td>${score.total }</td>
						<td>${score.avgDetail }</td>
						<td><fmt:formatNumber value="${score.avgDetail }" pattern="#,###.0"/></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3">
			<h3>fmt:formatDate 사용하기</h3>
			<table class="table">
				<thead>
					<tr>
						<th>이름</th>
						<th>가입일</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="user" items="${users }">
					<tr>
						<td>${user.name }</td>
						<td><fmt:formatDate value="${user.createDate }"/></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="col-sm-3">
			<h3>fmt:formatDate 사용하기</h3>
			<table class="table">
				<thead>
					<tr>
						<th>이름</th>
						<th>가입일</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="user" items="${users }">
					<tr>
						<td>${user.name }</td>
						<td><fmt:formatDate value="${user.createDate }" pattern="yyyy-mm-dd"/></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="col-sm-3">
			<h3>fmt:formatDate 사용하기</h3>
			<table class="table">
				<thead>
					<tr>
						<th>이름</th>
						<th>가입일</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="user" items="${users }">
					<tr>
						<td>${user.name }</td>
						<td><fmt:formatDate value="${user.createDate }" pattern="a h시 m분 s초"/></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="col-sm-3">
			<h3>fmt:formatDate 사용하기</h3>
			<table class="table">
				<thead>
					<tr>
						<th>이름</th>
						<th>가입일</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="user" items="${users }">
					<tr>
						<td>${user.name }</td>
						<td><fmt:formatDate value="${user.createDate }" pattern="M월 d일 EEEE a h시 m분 s초"/></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	
	
	
</div>
</body>
</html>
