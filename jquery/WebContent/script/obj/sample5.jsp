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
	function Person(이름, 국어점수, 영어점수, 수학점수) {
		// 프로퍼티 정의하기
		this.name = 이름;
		this.kor = 국어점수;
		this.eng = 영어점수;
		this.math = 수학점수;
		
		
		// 메소드 정의하기
		/*
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
		*/
	}
	
	Person.prototype.getTotal = function () {
		return this.kor + this.eng + this.math;
	}
	
	Person.prototype.getAverage = function () {
		return this.getTotal()/3;
	}
	
	var p1 = new Person('홍길동', 50, 70, 100);
	var p2 = new Person('김유신', 70, 100, 100);
	var p3 = new Person('강감찬', 60, 70, 60);
	
	Person.prototype.getShortAverage = function () {
		return Math.trunc(this.getAverage());
	}
	
	console.log("총점", p1.getTotal(), "평균", p1.getAverage());
	console.log("총점", p2.getTotal(), "평균", p2.getAverage());
	console.log("총점", p3.getTotal(), "평균", p3.getAverage());
	
	
</script>
</body>
</html>
