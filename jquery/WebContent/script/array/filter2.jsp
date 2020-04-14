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
<body onload="processStudents()">
<div class="container">
	<div class="page-header">
		<h1>학생 성적 리스트</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12 text-right">
			<form action="#" class="form-inline">
				<div class="form-group">
					<label>평균</label>
					<input type="text" class="form-control" id="average-field" />
					<button type="button" class="btn btn-default" onclick="processStudents()">조회</button>
				</div>
			</form>
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
					</tr>
				</thead>
				<tbody></tbody>
			</table>
		</div>
	</div>
</div>
<script type="text/javascript">
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
	
	function processStudents() {
		
		var average = parseInt(document.querySelector("#average-field").value);
		if (isNaN(average)) {
			average = 0;
		}
		
		displayResults(filteringStudents(average));
		
	}
	
	function filteringStudents(average) {
		return students.filter(function(student, index) {
			return getAverage(student) >= average;
		});
	}
	
	function displayResults(results) {
		var rows ="";
		results.forEach(function(student, index) {
			rows += makeRow(student);
		});
		
		document.querySelector(".table tbody").innerHTML = rows;
		
	}
	
	function makeRow(student) {
		var row = "";
		
		row += "<tr>";
		row += "<td>"+student.name+"</td>"
		row += "<td>"+student.kor+"</td>"
		row += "<td>"+student.eng+"</td>"
		row += "<td>"+student.math+"</td>"
		row += "<td>"+getTotal(student)+"</td>"
		row += "<td>"+getAverage(student)+"</td>"
		row += "</tr>";
		
		return row;
	}
	
	function getTotal(student) {
		return student.kor + student.eng + student.math;
	}
	
	function getAverage(student) {
		return Math.trunc(getTotal(student)/3);
	}
</script>
</body>
</html>
