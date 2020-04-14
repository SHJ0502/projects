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
		<h1>EL을 사용해서 속성으로 저장된 객체의 값 표현하기</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-4">
			<h3>요청객체에 저장된 속성값 표현하기</h3>
			<p>객체 : ${score1 }</p>
			<p>이름 : ${score1.name }</p>
			<p>국어점수 : ${score1.kor }</p>
			<p>영어점수 : ${score1.eng }</p>
			<p>수학점수 : ${score1.math }</p>
			<p>총점 : ${score1.kor + score1.eng + score1.math }</p>
			<p>평균 : ${(score1.kor + score1.eng + score1.math)/3 }</p>
		</div>
		<div class="col-sm-4">
			<h3>세션객체에 저장된 속성값 표현하기</h3>
			<p>객체 : ${score2 }</p>
			<p>이름 : ${score2.name }</p>
			<p>국어점수 : ${score2.kor }</p>
			<p>영어점수 : ${score2.eng }</p>
			<p>수학점수 : ${score2.math }</p>
			<p>총점 : ${score2.kor + score2.eng + score2.math }</p>
			<p>평균 : ${(score2.kor + score2.eng + score2.math)/3 }</p>
		</div>
		<div class="col-sm-4">
			<h3>애플리케이션객체에 저장된 속성값 표현하기</h3>
			<p>객체 : ${score3 }</p>
			<p>이름 : ${score3.name }</p>
			<p>국어점수 : ${score3.kor }</p>
			<p>영어점수 : ${score3.eng }</p>
			<p>수학점수 : ${score3.math }</p>
			<p>총점 : ${score3.kor + score3.eng + score3.math }</p>
			<p>평균 : ${(score3.kor + score3.eng + score3.math)/3 }</p>
		</div>
	</div>
</div>
</body>
</html>
