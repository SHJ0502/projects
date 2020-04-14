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
	var scores = [100, 60, 40, 90, 30, 60, 40, 70];
	scores.sort(function(a, b) {
		return (a-b)*-1;
	})
	console.log(scores);
	// 총점순으로 정렬하기
	var students = [
		{name:"홍길동", kor:70, eng:60, math:80},
		{name:"김유신", kor:50, eng:30, math:90},
		{name:"강감찬", kor:30, eng:80, math:70},
		{name:"이순신", kor:80, eng:50, math:50},
		{name:"류관순", kor:20, eng:30, math:40},
		{name:"안창호", kor:60, eng:90, math:70},
		{name:"이봉창", kor:90, eng:70, math:90},
		{name:"윤봉길", kor:80, eng:90, math:60},
		{name:"김좌진", kor:70, eng:80, math:50},
		{name:"김구", kor:50, eng:60, math:90}
	];
		
	function getTotal(student) {
		return student.kor + student.eng + student.math;
	}
	
	function getAverage(student) {
		return Math.trunc(getTotal(student)/3);
	}
	
	students.sort(function(student1, student2) {
		return getTotal(student2) - getTotal(student1)
	}).map(function(student, index) {
		student["ranking"] = (index+1);
		student["total"] = getTotal(student);
		student.average = getAverage(student);
		return student;
	}).forEach(function(s) {
		console.log(s.ranking, s.name, s.total, s.average, s.kor, s.eng, s.math);
	});
	
</script>
</body>
</html>
