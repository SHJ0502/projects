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
  	<style>
  		div#box {border: 2px solid red; width: 300px; height: 400px;}
  	</style>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>마우스 이벤트 실습</h1>
	</div>
	
	<div id="box" onclick="fn1(event)" onmousemove="fn2(event)"></div>
</div>
<script type="text/javascript">
	function fn1(e) {
		//console.log(e.type, e.target);
		
		var red = parseInt(Math.random() * 255);
		var green = parseInt(Math.random() * 255);
		var blue = parseInt(Math.random() * 255);
		
		e.target.style.backgroundColor = 'rgb('+red+', '+green+', '+blue+')';
		console.log(e.target);
	}
	function fn2(e) {
		console.log(e.type, e.target);
	}
</script>
</body>
</html>
