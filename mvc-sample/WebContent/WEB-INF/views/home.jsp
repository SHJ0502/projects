<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>home</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<c:set var="menu" value="home" />
<%@ include file="include/nav.jsp" %>
<div class="container">
	<div class="jumbotron">
		<h1>북 스토어</h1>
		<p>${message }</p>
		
		<div class="text-right">
			<a href="/user/loginform.html" class="btn btn-primary btn-lg">로그인</a>
			<a href="/user/registerform.html" class="btn btn-primary btn-lg">회원가입</a>
		</div>
	</div>
</div>
</body>
</html>
