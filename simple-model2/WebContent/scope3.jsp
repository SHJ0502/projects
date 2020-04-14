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
		<h1>Scope3 페이지</h1>
	</div>
	<div class="row">
		<div class="col-sm-4">
			<h3>Scope3 서블릿의 초기화파라미터</h3>
			<dl>
				<dt>저장디렉토리</dt><dd>${directory }</dd>
				<dt>최대 사이즈</dt><dd>${maxSize }</dd>
				
			</dl>
		</div>
		<div class="col-sm-4">
			<h3>Scope3 서블릿의 초기화파라미터</h3>
			<dl>
				<dt>사용자 역할</dt><dd>${userRole }</dd>
			</dl>
		</div>
		<div class="col-sm-4">
			<h3>서블릿컨텍스트의 초기화파라미터</h3>
			<dl>
				<dt>설정파일 경로</dt><dd>${location }</dd>
				<dt>관리자 이메일</dt><dd>${emailAddr }</dd>
			</dl>
		</div>
	</div>
</div>
</body>
</html>
