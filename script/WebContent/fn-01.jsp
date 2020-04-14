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
  		function myfunction(a, b) {
			console.log("a값", a, "b값", b);
			var x = a || 0;
			var y = b || 0;
			console.log("x값", x, "y값", y);
		}
  		
  		myfunction();
  		myfunction(1);
  		myfunction(1, 2);
  		myfunction(1, 2, 3);
  		myfunction(1, 2, 3, 4);
  	</script>
</head>
<body>
<div class="container">
  
</div>
</body>
</html>
