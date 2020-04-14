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
  		div[id^='box'] {border: 2px solid red; padding: 50px;}
  	</style>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>이벤트 버블링(이벤트가 부모 엘리먼트로 전파되는 것)</h1>
	</div>
	
	<div id="box-1" onclick="fn1(event)">
		<div id="box-2" onclick="fn2(event)">
			<button class="btn btn-primary" onclick="fn3(event)">클릭</button>
		</div>
	</div>
</div>
<script type="text/javascript">
	function fn1(e) {
		console.log("box-1의 클릭이벤트 처리 함수 실행됨");
	}
	function fn2(e) {
		e.stopPropagation();
		console.log("box-2의 클릭이벤트 처리 함수 실행됨");
		}
	function fn3(e) {
		e.stopPropagation();
		console.log("button의 클릭이벤트 처리 함수 실행됨");
	}
</script>
</body>
</html>
