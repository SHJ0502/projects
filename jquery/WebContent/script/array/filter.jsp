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
	var ages = [39, 36, 27, 13, 19, 21, 10];
	
	var adult = ages.filter(function(age, index) {
		return age >= 18;
	});
	
	console.log("성인", adult);
	
	// "이"씨만 찾아내기
	var names = ["김유신", "강감찬", "이순신", "이성계", "안창호", "이방원", "류관순"];	
	var lees = names.filter(function(names, index) {
		return names.substring(0, 1) == "이";
	});
	
	console.log("이씨들", lees);
	
	// 평균 60미만인 학생들로 구성된 배열 만들기
	var students = [
		{name:"홍길동", kor:70, eng:60, math:80},
		{name:"김유신", kor:50, eng:30, math:90},
		{name:"강감찬", kor:30, eng:80, math:70},
		{name:"이순신", kor:80, eng:50, math:50},
		{name:"류관순", kor:20, eng:60, math:30}
	];
	
	// 평균 60점 미만인 학생들로 구성된 배열 만들기
	var unpassed = students.filter(function(student, index) {
		return Math.trunc((student.kor + student.eng + student.math)/3) < 60;
	});
	unpassed.forEach(function(s, index) {
		console.log("불합격자", s.name, Math.trunc((s.kor + s.eng + s.math)/3));
	});
	
	// 총점 200점 이상인 학생으로 구성된 배열 만들고, 출력하기
	students.filter(function(student, index) {
		return student.kor + student.eng + student.math >= 200;
	}).forEach(function(student, index) {
		console.log("200점이상", student.name);
	})
	
	
	
</script>
</body>
</html>
