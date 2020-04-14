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
	// 프로토타입을 사용하면 
	// 자바스크립트 언어가 제공하는 객체 사용정의 함수를 추가할 수 있다.
	// 단, 자바스크립트가 제공하는 객체의 메소드를 임의변경하는 것은 절대 금지.
	Date.prototype.toKoreanString = function () {
		var year = this.getFullYear();
		var month = this.getMonth() + 1;
		var day = this.getDate();
		
		return year + "년" + month + "월" + day + "일";
	}
	
	var now  = new Date();
	console.log(now.toKoreanString());
	
	
</script>
</body>
</html>
