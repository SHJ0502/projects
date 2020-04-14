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
		<h1>EL을 사용해서 속성값 표현하기</h1>		
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<dl>
				<dt>이름</dt><dd>${username }</dd>
				<dt>나이</dt><dd>${age }</dd>
				<dt>몸무게</dt><dd>${weight }</dd>
				<dt>키</dt><dd>${height }</dd>
				<dt>주소</dt><dd>${address }</dd>
			</dl>
		</div>
	</div>
</div>
</body>
</html>
