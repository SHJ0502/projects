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
	var scores = [70, 60, 50, 80, 90, 100, 50];
	var result = scores.reduce(function(total, score, index) {
		console.log("집계된 값", total, score);
		return total + score;
	});
	
	console.log("총점", result);
	
	var orders = [
		{name:'아이폰', price:100, qty:3},
		{name:'애플워치', price:70, qty:2},
		{name:'아이패드', price:90, qty:6},
		{name:'레고', price:10, qty:6}
	];
	var totalOrderPrice = orders.reduce(function(total, product, index) {
		return total + (product.price * product.qty);
	}, 0);
	console.log("총구매가격", totalOrderPrice);
</script>
</body>
</html>
