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
  		div[id$='box'] {border: 2px solid red; padding: 50px;}
  	</style>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>이벤트 실습하기</h1>
	</div>
	
	<div id="outter-box" onmouseenter="fn1();" onmouseleave="fn3()">
		<div id="inner-box" onmouseenter="fn2();" onmouseleave="fn4()">
			<button class="btn btn-primary" id="btn-add" onclick="fn5()">클릭</button>
		</div>
	</div>
</div>
<script type="text/javascript">
	function fn1() {
		console.log("outter-box로 진입");
	}
	function fn2() {
		console.log("inner-box로 진입");
	}
	function fn3() {
		console.log("outter-box로부터 탈출");
	}
	function fn4() {
		console.log("inner-box로부터 탈출");
	}
	function fn5() {
		console.log("btn-add 버튼이 클릭되었습니다.");
	}
</script>
</body>
</html>
