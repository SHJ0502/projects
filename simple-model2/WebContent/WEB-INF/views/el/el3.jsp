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
		<h1>EL의 연산자</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<h3>과목 리스트</h3>
			<ul>
				<li>${subjects[0] }</li>
				<li>${subjects[1] }</li>
				<li>${subjects[2] }</li>
				<li>${subjects[3] }</li>
				<li>${subjects[4] }</li>
			</ul>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<table class="table">
				<thead>
					<tr>
						<th>이름</th>
						<th>국어</th>
						<th>영어</th>
						<th>수학</th>
						<th>총점</th>
						<th>평균</th>
						<th>합격여부</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${scores[0].name }</td>
						<td>${scores[0].kor } ${scores[0].kor < 40 ? '과락' : '' }</td>
						<td>${scores[0].eng } ${scores[0].eng lt 40 ? '과락' : '' }</td>
						<td>${scores[0].math } ${scores[0].math lt 40 ? '과락' : '' }</td>
						<td>${scores[0].kor + scores[0].eng + scores[0].math }</td>
						<td>${(scores[0].kor + scores[0].eng + scores[0].math) div 3 }</td>
						<td>${((scores[0].kor + scores[0].eng + scores[0].math) div 3) ge 60 ? '합격' : '불합격' }</td>
					</tr>
					<tr>
						<td>${scores[1].name }</td>
						<td>${scores[1].kor }</td>
						<td>${scores[1].eng }</td>
						<td>${scores[1].math }</td>
						<td>${scores[1].total }</td>
						<td>${scores[1].avg }</td>
						<td>${scores[1].passed ? '합격' : '불합격' }</td>
					</tr>
					<tr>
						<td>${scores[2].name }</td>
						<td>${scores[2].kor }</td>
						<td>${scores[2].eng }</td>
						<td>${scores[2].math }</td>
						<td>${scores[2].total }</td>
						<td>${scores[2].avg }</td>
						<td>${scores[2].passed ? '합격' : '불합격' }</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>
