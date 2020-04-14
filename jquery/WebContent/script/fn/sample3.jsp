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
	function process(fn, x, y) {
		var result = fn(x, y);
		console.log("결과", result);
	}
	
	process(function(a, b) {
		console.log("더하기 작업을 수행합니다.");
		return a + b;
	}, 10, 20);
	
	process(function(a, b) {
		console.log("곱하기 작업을 수행합니다.");
		return a*b;
	}, 100, 200)
	
</script>
</body>
</html>
