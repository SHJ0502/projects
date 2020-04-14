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
		<h1>c:choose, c:when, c:otherwise 사용</h1>	
	</div>
	
	
	
	<div class="row">
		<div class="col-sm-6">
			<h3>링크</h3>
			<ul>
				<li><a href="c3.hta">손님</a></li>
				<li><a href="c3.hta?usertype=0">손님</a></li>
				<li><a href="c3.hta?usertype=1">사용자</a></li>
				<li><a href="c3.hta?usertype=2">관리자</a></li>
			</ul>
		</div>
		<div class="col-sm-6">
			<h3>c:choose, c:when 사용</h3>
			<c:choose>
				<c:when test="${role eq 'guest' }">
					<p>${role } 방문을 환영합니다.</p>
					<p>홈, 회원가입</p>
				</c:when>
				<c:when test="${role eq 'user' }">
					<p>${role } 방문을 환영합니다.</p>
					<p>홈, 로그인, 장바구니</p>
				</c:when>
				<c:when test="${role eq 'admin' }">
					<p>${role } 방문을 환영합니다.</p>
					<p>통계, 고객관리, 상품관리, 이벤트관리, 공지사항관리</p>
				</c:when>
			</c:choose>
		</div>
	</div>
	
	
	<div class="row'">
		<h3>c:choose c:when c:otherwise</h3>
		<p>현재 성적 : ${score }</p>
		<c:choose>
			<c:when test="${score >= 90 }">
				<p>A학점입니다.</p>
				<c:choose>
					<c:when test="${score == 100 }">
						<p>전액 장학금 지급대상입니다.</p>
					</c:when>
					<c:when test="${score >= 97 }">
						<p>반액 장학금 지급대상입니다.</p>
					</c:when>
				</c:choose>
			</c:when>
			<c:when test="${score >= 80 }">
				<p>B학점입니다.</p>
			</c:when>
			<c:when test="${score >= 70 }">
				<p>C학점입니다.</p>
			</c:when>
			<c:when test="${score >= 60 }">
				<p>D학점입니다.</p>
			</c:when>
			<c:otherwise>
				<p>F학점입니다.</p>
			</c:otherwise>
		</c:choose>
	</div>
	
	<hr/>
	<div class="row">
		<div class="col-sm-12">
			<c:choose>
				<c:when test="${not empty LOGINED_USER }">
					<p>${LOGINED_USER.name }님 환영합니다.</p>
					<p>쪽지 1개, 메일:100개, 포인트:${LOGINED_USER.point }점</p>
					<p><a href="">로그아웃</a></p>
				</c:when>
				<c:otherwise>
					<form class="well">
						<div class="form-group">
							<label>아이디</label>
							<input type="text" class="form-control" name="id" />
						</div>
						<div class="form-group">
							<label>비밀번호</label>
							<input type="password" class="form-control" name="pwd" />
						</div>
						<div class="text-right">
							<button type="submit" class="btn btn-primary">로그인</button>
						</div>
					</form>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	
	
	
</div>
</body>
</html>
