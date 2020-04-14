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
		<h1>c:if 태그</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-4">
			<h3>문자열값을 조건식에서 비교하기</h3>
			<c:if test="${role == 'admin' }">
				<p>관리자님 환영합니다.</p>
			</c:if>
			<c:if test="${role eq 'admin' }">
				<p>관리자님 환영합니다.</p>
			</c:if>
			<c:if test="${role != 'admin' }">
				<p>일반 사용자님 환영합니다.</p>
			</c:if>
			<c:if test="${role ne 'admin' }">
				<p>일반 사용자님 환영합니다.</p>
			</c:if>
		</div>
		<div class="col-sm-4">
			<h3>기본자료형값(정수, 실수 등) 비교하기</h3>
			<c:if test="${avg >= 60 }">
				<p>합격입니다.</p>
			</c:if>
			<c:if test="${avg ge 60 }">
				<p>합격입니다.</p>
			</c:if>
			
			<c:if test="${avg < 60 }">
				<p>불합격입니다.</p>
			</c:if>
			<c:if test="${avg lt 60 }">
				<p>불합격입니다.</p>
			</c:if>
		</div>
		<div class="col-sm-4">
			<h3>객체의 존재여부를 알아내기</h3>
			<c:if test="${not empty LOGINED_USER }">
				<p>${LOGINED_USER.name }님 환영합니다.</p>
			</c:if>
			
			<c:if test="${empty LOGINED_USER }">
				<p>로그인 페이지로 이동해주세요.</p>
			</c:if>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-6">
			<h3>논리연산자를 사용해서 비교하기</h3>
			<p>무상수리대상 : 운행거리 10만Km 미만이고 사용기간 5년 미만인 경우</p>
			
			<c:if test="${distance < 100000 && year < 5 }">
				<p>무상수리 대상 차량입니다.</p>
			</c:if>
			<c:if test="${distance lt 100000 && year lt 5 }">
				<p>무상수리 대상 차량입니다.</p>
			</c:if>
		</div>	
		
		<div class="col-sm-6">
			<h3>논리연산자를 사용해서 비교하기</h3>
			<p>유상수리대상 : 운행거리 10만Km 이상이거나 사용기간 5년 이상인 경우</p>
			
			<c:if test="${distance >= 100000 || year >= 5 }">
				<p>유상수리 대상 차량입니다.</p>
			</c:if>
			<c:if test="${distance ge 100000 or year ge 5 }">
				<p>유상수리 대상 차량입니다.</p>
			</c:if>
		</div>	
	</div>
</div>
</body>
</html>
