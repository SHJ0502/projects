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
  		var result1 = 3 || 2;
  		console.log("결과1", result1);	// 3
  		
  		var result2 = "" 			|| 'guest';
  		var result3 = null 			|| 'guest';
  		var result4 = undefined 	|| 'guest';
  		var result5 = "vip"			|| 'guest';
  		var result6 = 'vvip'		|| 'guest';
  		console.log("결과2", result2);
  		console.log("결과3", result3);
  		console.log("결과4", result4);
  		console.log("결과5", result5);
  		console.log("결과6", result6);
  		
  		var result7 = ""			&& 100 > 10;
  		var result8 = null			&& 100 > 10;
  		var result9 = undefined		&& 100 > 10;
  		var result10 = 5 > 4		&& 100 > 10;
  		console.log("결과7", result7);
  		console.log("결과8", result8);
  		console.log("결과9", result9);
  		console.log("결과10", result10);
  	</script>
</head>
<body>
<div class="container">
  
</div>
</body>
</html>
