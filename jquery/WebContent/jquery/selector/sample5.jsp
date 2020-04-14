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
  		div {padding: 10px; margin: 3px; border: 1px solid black;}
  	</style>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>선택자 연습</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<h3>선택자 연습하기</h3>
			<p>첫번째 p</p>
			<p>두번째 p</p>
			<p>세번째 p</p>
			<p>네번째 p</p>
			<p>다섯번째 p</p>
		</div>
		<div class="col-sm-12">
			<button class="btn btn-default" onclick="fn(0)">버튼1</button>
			<button class="btn btn-default" onclick="fn(1)">버튼2</button>
			<button class="btn btn-default" onclick="fn(2)">버튼3</button>
			<button class="btn btn-default" onclick="fn(3)">버튼4</button>
			<button class="btn btn-default" onclick="fn(4)">버튼5</button>
		</div>
	</div>
</div>
			
<script type="text/javascript">
	function fn(index) {
		var red = Math.trunc(Math.random()*256);
		var green = Math.trunc(Math.random()*256);
		var blue = Math.trunc(Math.random()*256);
		$("p:eq("+index+")").css("background-color", "rgb("+red+","+green+","+blue+")");
	}
</script>
</body>
</html>
