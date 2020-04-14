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
		<h1>선택자 연습</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-6">
			<h3>리스트</h3>
			<ul>
				<li><a href="http://www.google.com" title="검색사이트">링크1</a></li>
				<li><a href="http://www.daum.net" title="포털 쇼핑 뉴스 사이트">링크2</a></li>
				<li><a href="http://www.naver.com" title="포털 검색 뉴스 사이트">링크3</a></li>
				<li><a href="twitter.com" title="SNS">링크4</a></li>
				<li><a href="www.instargram.com" title="SNS 사진 동영상">링크5</a></li>
			</ul>
		</div>
	</div>
</div>
<script type="text/javascript">
	// title 속성값이 '검색사이트'인 엘리먼트 선택
	$("[title='검색사이트']").css('background-color', 'yellow');
	// href속성값이 'http'로 시작하는 엘리먼트 선택
	$("[href^='http']").css('font-size', '20px');
	// a엘리먼트중에서 href속성값이 'http'로 시작한지 않는 a 엘리먼트 선택
	$("a:not([href^='http'])").css("border", '2px solid black');
	// href속성값이 '.com'으로 끝나는 엘리먼트 선택
	$("[href$='.com']").css('margin-left', '50px');
	// title속성값이 '검색' 이라는 텍스트를 포함하고 있는 엘리먼트 선택
	$('[title*="검색"]').css("border", '2px solid blue');
	// title 속성값이 '검색'이라는 단어를 포함하고 이쓴ㄴ 엘리먼트 선택
	$('[title~="검색"]').css("opacity", '0.1');
</script>
</body>
</html>
