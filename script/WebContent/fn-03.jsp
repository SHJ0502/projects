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
  	<script type="text/javascript">
  	
  		// 기명함수(이름있는 함수)는 선언위치와 상관없이 실행가능하다.
  		console.log(myfn2('김', '유신'));
  		
  		// 익명함수
 		var myfn1 = function(firstName, lastName) {
 			var fullName = firstName + lastName;
 			return fullName;
 		} 		
 		
  		// 이름있는 함수
 		function myfn2 (firstName, lastName) {
 			var fullName = firstName + lastName;
 			return fullName;
 		}
  		
  		// 익명함수는 그 함수의 선언부 아래에서 사용가능하다.
  		console.log(myfn1('홍', '길동'));
  	</script>
</head>
<body>
<div class="container">
 
</div>
</body>
</html>
