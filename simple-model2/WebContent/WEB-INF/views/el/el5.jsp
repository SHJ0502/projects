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
	<div class="page-header">
		<h1>객체의 객체를 EL로 표현하기</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<p>학생명 : ${student.name }</p>
			<p>전공계열 : ${student.dept } </p>
			<p>국어 : ${student.myScore.kor }</p>
			<p>영어 : ${student.myScore.eng }</p>
			<p>수학 : ${student.myScore.math }</p>
			<p>총점 : ${student.myScore.total }</p>
			<p>평균 : ${student.myScore.avg }</p>
			<p>합격여부 : ${student.myScore.passed ? '합격' : '불합격' }</p>
		</div>
	</div>
	
	
</div>
</body>
</html>
