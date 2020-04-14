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
			<div id="box-1">
				<h3>선택자 연습1</h3>
				<p class="text-center">선택자는 jQuery의 가장 중요한 부분이다.</p>
				<p class="text-center">선택자는 CSS3의 선택자와 호환된다.</p>
				<p class="text-center">선택자는 매우 다양하다.</p>
				<p class="text-center">선택자는 jQuery 코딩의 기본문법사항이다.</p>
			</div>
		</div>
		<div class="col-sm-6">
			<div id="box-2">
				<h3>선택자 연습2</h3>
				<p>선택자의 종류를 알아보자</p>
				<p>선택자를 활용해보자</p>
				<p>기타 선택자를 알아보자</p>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	// "jQuery"라는 텍스트를 포함하고 있는 P엘리먼트 선택
	$("p:contains(jQuery)").css('background-color', 'yellow');
	// "jQuery"라는 텍스트를 포함하고 있지 않은 P엘리먼트 선택
	$("p:not(:contains(jQuery))").css("background-color", 'lightgreen');
	$("p:not(:last-child)").css({border:'1px solid red', padding:'10px'});
	
	// h2 태그를 후손으로 갖고 있는 div 엘리먼트 선택
	$('div:has(h1)').css('border', '2px solid lightgreen');
</script>
</body>
</html>
