<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>도서 대여점</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container">
 	<div class="page-header">
 		<h1>로그인 폼</h1>
 	</div>
 	<%
 		String fail = request.getParameter("fail");
 	%>
 	
 	<%
 		if ("invalid".equals(fail)) {
 	%>
 		<div class="row">
 			<div class="col-sm-12">
 				<div class="alert alert-danger">
 					<strong>로그인 실패</strong> 아이디 혹은 비밀번호가 일치하지 않습니다.
 				</div>
 			</div>
 		</div>
 	<%
 		} else if ("deny".equals(fail)) {
 	%>
 		<div class="row">
 			<div class="col-sm-12">
 				<div class="alert alert-danger">
 					<strong>서비스 거부</strong> 요청한 서비스는 로그인 후 이용가능합니다.
 				</div>
 			</div>
 		</div>
 	<%
 		}
 	%>
 	
 	<div class="row">
 		<div class="col-sm-12">
 			<form class="well" action="login.jsp" method="post">
 				<div class="form-group">
 					<label>사용자 아이디</label>
 					<input type="text" class="form-control" name="userid" />
 				</div>
 				<div class="form-group">
 					<label>사용자 비밀번호</label>
 					<input type="password" class="form-control" name="userpwd" />
 				</div>
 				<div class="text-right">
 					<button type="submit" class="btn btn-primary">로그인</button>
 				</div>
 			</form>
 		</div>
 	</div>
</div>
</body>
</html>
