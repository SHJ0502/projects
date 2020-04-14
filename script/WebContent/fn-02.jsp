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
  	<script>
  	
  		// 익명함수를 변수에 저장
  		var myfn1 = function(firstName, lastName) {
  			var fullName = firstName + ", " + lastName;
  			return fullName;
  		}
  		
  		// console.log(myfn1);
  		var name =myfn1("홍", "길동");
  		console.log(name);
  	</script>
</head>
<body>
<div class="container">
  
</div>
</body>
</html>
