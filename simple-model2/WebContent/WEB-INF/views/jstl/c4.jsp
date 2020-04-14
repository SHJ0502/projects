<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<h1>c:forEach 사용하기</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-4">
			<h3>도서 목록</h3>
			<ul>
				<li>${books[0] }</li>
				<li>${books[1] }</li>
				<li>${books[2] }</li>
				<li>${books[3] }</li>
			</ul>
		</div>
		<div class="col-sm-4">
			<h3>도서 목록</h3>
			<ul>
			<c:forEach var="title" items="${books }">
				<li>${title }</li>
			</c:forEach>
			</ul>
		</div>
		<div class="col-sm-4">
			<h3>박스오피스 목록</h3>
			<ul>
			<c:forEach var="name" items="${movies }">
				<li>${name }</li>
			</c:forEach>
			</ul>
		</div>
		
		<div class="row">
			<div class="col-sm-6">
				<h3>사용자 리스트</h3>
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
					<c:choose>
						<c:when test="${not empty users }">
							<c:forEach var="person" items="${users }">
								<tr>
									<td>${person.name }</td>
									<td>${person.id }</td>
									<td>${person.point }</td>
									<td>${person.createDate }</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="4" class="text-center">사용자가 존재하지 않습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
					</tbody>
				</table>
			</div>
			<div class="col-sm-6">
				<h3>학생 리스트</h3>
				<table class="table">
					<thead>
						<tr>
							<th>이름</th>
							<th>학교</th>
							<th>아이디</th>
							<th>국어</th>
							<th>영어</th>
							<th>수학</th>
							<th>총점</th>
							<th>평균</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="student" items="${students }">
						<tr>
							<td>${student.name }</td>
							<td>${student.dept }</td>
							<td>${student.myScore.name }</td>
							<td>${student.myScore.kor }</td>
							<td>${student.myScore.eng }</td>
							<td>${student.myScore.math }</td>
							<td>${student.myScore.total }</td>
							<td>${student.myScore.avg }</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			
			<div class="row">
				<div class="col-sm-12">
					<h3>사용자 목록</h3>
					<table class="table">
						<thead>
							<tr>
								<th>index</th>
								<th>count</th>
								<th>first</th>
								<th>last</th>
								<th>이름</th>
								<th>아이디</th>
								<th>포인트</th>
								<th>등록일</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="user"  items="${users }"  varStatus="loop">
							<tr class="${loop.first ? 'bg-success':'bg-info'} ">
								<td>${loop.index }</td>
								<td>${loop.count }</td>
								<td>${loop.first }</td>
								<td>${loop.last }</td>
								<td>${user.name }</td>
								<td>${user.id }</td>
								<td>${user.point }</td>
								<td>${user.createDate }</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			
			<div class="row">
				<div class="col-sm-12 text-center">
					<ul class="pagination">
					<c:forEach var="num" begin="1" end="10">
						<!--  <li class="${param.pno == num ? 'active' : '' }"><a href="c4.hta?pno=${num }">${num }</a></li>	-->
						<c:choose>
							<c:when test="${param.pno eq num }">
								<li class="active"><a href="c4.hta?pno=${num }">${num }</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="c4.hta?pno=${num }">${num }</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					</ul>
				</div>
			</div>
			
			<div class="row">
				<div class="col-sm-12 text-center">
					<ul class="pagination">
					<c:forEach var="num" begin="1" end="10">
						<c:url var="link" value="c4.hta">
							<c:param name="pno" value="${num }" />
							<c:param name="cateno" value="10" />
							<c:param name="sort" value="date" />
							<c:param name="opt" value="title" />
							<c:param name="keyword" value="자바" />
						</c:url>
						<li><a href="${link }">${num }</a></li>
						<%--
							 ${link} ===> c4.hta?pno=1&cateno=10&sort=date&opt=title&keyword=자바
						 --%>
					</c:forEach>
					</ul>
				</div>
			</div>
			
		</div>
	</div>
</div>
</body>
</html>
