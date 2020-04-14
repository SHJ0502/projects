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
	function findCalculator(type) {
		var x = function(a, b) {
			console.log('더하기', a + b);
		}
		var y = function(a, b) {
			console.log('빼기', a - b);
		}
		
		if (type == 'plus') {
			return x;
		}
		
		if (type == 'minus') {
			return y;
		}
		
	}
	
	var fn1 = findCalculator('plus');
	var fn2 = findCalculator('minus');
	
	console.log("fn1에 저장된 것", fn1);
	console.log("fn2에 저장된 것", fn2);
	
	fn1(10, 20);
	fn2(100, 60);
	
</script>
</body>
</html>
