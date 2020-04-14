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
<body onload="displayStudents()">
<div class="container">
	<div class="page-header">
		<h1>학생 성적 리스트</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12 text-right">
			<form action="#" class="form-inline">
				<div class="form-group">
					<label>정렬순서</label>
					<select id="sort-type" class="form-control" onchange="sortStudent()">
						<option selected="selected" disabled="disabled"> 선택하세요</option>
						<option value="total">총점</option>
						<option value="kor">국어</option>
						<option value="eng">영어</option>
						<option value="math">수학</option>
					</select>
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
						<th id="header-kor">국어</th>
						<th id="header-eng">영어</th>
						<th id="header-math">수학</th>
						<th id="header-total">총점</th>
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
	
	function sortStudent() {
		// 정렬타입 - "total", "kor", "eng", "math"
		var sortType = document.getElementById("sort-type").value;
		
		// students배열을 총점이 포함된 배열로 변환
		student = student.map(function(s) {
			s.total = getTotal(s);
			return s;
		});
		
		// sortType에 들어있는 정렬타입에 해당하는 값을 비교해서 배열을 정렬시킴
		student.sort(function(s1, s2) {
			return  s2[sortType] - s1[sortType];
		});
		
		displayStudents();
		
		// 정렬항목을 하이라이트 시킴
		
		
		changeHighlightHeader(sortType);
		changeHighlightDataCell(sortType);
	}
	
	function changeHighlightHeader(sortType) {
		document.querySelectorAll("th[id^='header']").forEach(function(th) {
			th.style.color = 'black';
			th.style.fontWeight = 'normal';
		});
		document.querySelector("#header-" + sortType).style.color = 'red';
		document.querySelector("#header-" + sortType).style.fontWeight = 'bolder';
		
	}
	
	function changeHighlightDataCell(sortType) {
		document.querySelectorAll("td.cell").forEach(function(td) {
			td.style.color = 'black';
		});
		document.querySelectorAll("." + sortType).forEach(function(td) {
			td.style.color = 'red';
		});
		
	}
	
	function displayStudents() {
		var rows ="";
		students.forEach(function(student, index) {
			rows += makeRow(student);
		});
		
		document.querySelector(".table tbody").innerHTML = rows;
		
	}
	
	function makeRow(student) {
		var row = "";
		row += "<tr>";
		row += "<td>"+student.name+"</td>"
		row += "<td class='cell kor'>"+student.kor+"</td>"
		row += "<td class='cell eng'>"+student.eng+"</td>"
		row += "<td class='cell math'>"+student.math+"</td>"
		row += "<td class='cell total'>"+getTotal(student)+"</td>"
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
