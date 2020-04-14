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
  			border: 2px solid #eee;	
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
			<ul>
				<li>커피</li>
				<li>우유</li>
				<li>차</li>
			</ul>
		</div>
	</div>
</div>
<script type="text/javascript">
	// 부모 엘리먼트 선택
	//$('li:first').parent().css('border-color', 'red');		// UL선택
	
	// 모든 조상 엘리먼트 선택
	//$("li").parent().css('border-color', 'yellow');			// UL, DIV.col-sm-12
	
	// 조상 엘리먼트 중에서 div들만 선택
	//$("li").parents("div").css("border-color", 'red');		// div, col-sm-12, div.row
	
	// 조상 엘리먼트 중에서 가장 가까운 div만 선택
	$("li").closest("div").css("border-color", 'red');			// div, col-sm-12
</script>
</body>
</html>
