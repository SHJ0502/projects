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
	
</div>
<script type="text/javascript">
	var F;
	
	// _()를 실행하면 조작함수들이 들어있는 객체가 획득된다.
	//_() -----> {조작함수1:f, 조작함수2:f}------>_().조작함수1()
	function _() {
		var obj = {
			조작함수1: function() {
				console.log("조작함수1 실행");
				return this;
			},
			조작함수2: function() {
				console.log("조작함수2 실행");
				return this;
			}
		}
		return obj;
	}
		
	
	// _함수객체에 x, y를 저장하기
	_.x = function() {
		console.log('xxxx');
	}
		
	_.y = function() {
		console.log('yyyy');
	}
	_.each = function() {
		console.log('또 each.........................두번째');
	}
	
	// 사용하기
	_().조작함수1();
	_().조작함수2();
	_().조작함수1().조작함수2();
	_.x();
	_.y();
	
	_().each();
	_.each();
	
</script>
</body>
</html>
