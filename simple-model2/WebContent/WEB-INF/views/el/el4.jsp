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
		<h1>속성을 Map을 전달받은 경우 EL로 표현하기</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<ul>
				<li>검색 옵션 : ${criteria.searchOption }</li>
				<li>검색 키워드 : ${criteria.searchKeyword }</li>
				<li>정렬방식 : ${criteria.sort }</li>
				<li>화면에 표시할 레코드 개수 : ${criteria.rows }</li>
				<li>현재 페이지번호 : ${criteria.pageNo }</li>
				<li>시작 페이지번호 : ${criteria['begin-page'] }</li>
				<li>종료 페이지번호 : ${criteria['end-page'] }</li>
			</ul>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<ul>
				<li>검색 옵션 : ${criteria["searchOption"] }</li>
				<li>검색 키워드 : ${criteria["searchKeyword"] }</li>
				<li>정렬방식 : ${criteria["sort"] }</li>
				<li>화면에 표시할 레코드 개수 : ${criteria["rows"] }</li>
				<li>현재 페이지번호 : ${criteria["pageNo"] }</li>
			</ul>
		</div>
	</div>
</div>
</body>
</html>
