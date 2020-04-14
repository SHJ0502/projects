<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>로그인 폼</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<c:set var="menu" value="login" />
<%@ include file="../include/nav.jsp" %>
<div class="container">
	<div class="page-header">
		<h1>로그인 폼</h1>
	</div>
	
	<c:if test="${param.fail eq 'invalide' }">
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1">
				<div class="alert alert-danger">
					<strong>로그인 실패</strong> 아이디 혹은 비밀번호가 일치하지 않습니다.
				</div>
			</div>
		</div>
	</c:if>
	
	<div class="row">
		<div class="col-sm-12">
			<form id="register-form" class="well" method="post" action="login.html">
				<div class="form-group">
					<label>아이디</label>
					<input type="text" class="form-control" id="user-id" name="id" />
				</div>
				<div class="form-group">
					<label>비밀번호</label>
					<input type="password" class="form-control" id="user-pwd" name="pwd" />
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
