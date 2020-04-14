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
  	<style type="text/css">
  		.container *{
  			padding: 5px;
  			margin: 5px;
  			border: 2px solid black;	
  			}
  	</style>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>필터 메소드</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<h3>부모, 조상 검색하기</h3>
			<p>메뉴를 선택하세요</p>
			<p>일부메뉴는 <strong>추가 봉사료</strong>가 부가 될 수 있습니다.</p>
			<ul>
				<li>커피</li>
				<li>우유</li>
				<li>차</li>
				<li>아이스크림</li>
				<li>케이크</li>
			</ul>
		</div>
	</div>
</div>
<script type="text/javascript">
	//$("li:first").css("border-color", 'red');
	//$("li").first().css("border-color", 'red');
	
	// li중에서 맨 마지막번째 선택
	//$("li:last").css("border-color", 'red');
	//$("li").last().css("border-color", 'red');
	
	// li중에서 index에 해당하는 것 선택
	//$("li:eq(2)").css("border-color", 'red');
	//$("li").eq(2).css("border-color", 'red');
	
	//p중에서 strong태그를 가지고 있는 것 선택
	$("p:has(strong)").css("border-color", 'green');
	$("p").has("strong").css("border-color", 'green');
	$("p").filter(":has(strong)").css("border-color", 'green');
	
	// p중에서 첫번째가 아닌것 선택
	$("p:not(:last)").css("border-color", 'yellow');
	$("p").not(":last").css("border-color", "yellow");
	$("p").filter(":not(:last)").css("border-color", 'yellow');
</script>
</body>
</html>
