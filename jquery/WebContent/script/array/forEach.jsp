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
	var names = ["홍길동", "김유신", "강감찬"];
	
	for (var i=0; i<names.length; i++) {
		console.log("반복문", names[i]);
	}
	
	names.forEach(function(item, index) {
		console.log(item, index);
	});
	
	names.forEach(function(item, index) {
		console.log(item.substring(0, 1));
	});
	
	var scores = [79, 100, 60, 70, 80, 74];
	
	var total = 0;
	scores.forEach(function(score, index) {
		total += score;
	});
	console.log("총점", total);
	
	var student = [
		{name:"홍길동", kor:70, eng:60, math:80},
		{name:"김유신", kor:50, eng:30, math:90},
		{name:"강감찬", kor:30, eng:80, math:70},
		{name:"이순신", kor:80, eng:50, math:50},
		{name:"류관순", kor:20, eng:60, math:30}
	];
	
	student.forEach(function(student, index) {
		console.log(student.name, student.kor + student.eng + student.math);
	})
	
</script>
</body>
</html>
