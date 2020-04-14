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
	var p = new Person("홍길동", 100, 100, 100);
	var s = new Student(10, "이순신", 80, 80, 80);
	
	var total1 = p.getTotal();
	var total2 = p.getTotal.call(s);
	console.log("홍길동 총점", total1);
	console.log("이순신 총점", total2);

	function Student(no, name, kor, eng, math) {
		this.no = no;
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
		
	}

	function Person(이름, 국어점수, 영어점수, 수학점수) {
		// 프로퍼티 정의하기
		this.name = 이름;
		this.kor = 국어점수;
		this.eng = 영어점수;
		this.math = 수학점수;
		
		// 메소드 정의하기
		this.getTotal = function() {
			console.log("전달받은 객체", this);
			// this는 이 메소드를 실행한 객체를 전달받는다.
			// 대부분의 경우 이 메소드를 직접 가지고 있는 Person객체를 전달받을 것이다.
			var total = this.kor + this.eng + this.math;
			return total;
		};
		this.getAverage = function() {
			console.log("전달받은 객체", this);
			var average = this.getTotal()/3;
			return average;
		};
		
		this.getRow = function() {
			var row = "";
			row += "<tr>";
			row += "<td>"+ this.name +"</td>";
			row += "<td>"+ this.kor +"</td>";
			row += "<td>"+ this.eng +"</td>";
			row += "<td>"+ this.math +"</td>";
			row += "<td>"+ this.getTotal() +"</td>";
			row += "<td>"+ this.getAverage() +"</td>";
			row += "</tr>";
			
			return row;
		}
	}
</script>
</body>
</html>
