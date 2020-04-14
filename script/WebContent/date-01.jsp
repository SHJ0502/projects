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
<body onload="initDate()">
<div class="container">
	<div class="page-header">
		<h1>Date API</h1>
	</div>
	<form>
			<div class="form-group">
				<label>시작일</label>
				<input type="date" class="form-control" id="start-date-field">
			</div>
		</form>
	
	<form>
		<div class="form-group">
			<label>오늘</label>
			<input type="date" class="form-control" id="date-field">
		</div>
	</form>
	<div>
		<div>
			<button class="btn btn-default" onclick="beforeThreeDays()">3일</button>
			<button class="btn btn-default" onclick="beforeOneWeek()">일주일</button>
		</div>
	</div>
		
	<div id="box">
		<p>Date : <span></span></p>
		<p>getTime() : <span ></span></p>
		<p>getFullYear() : <span></span></p>
		<p>getMonth() : <span></span></p>
		<p>getDate() : <span></span></p>
		<p>getHours() : <span></span></p>
		<p>getMinutes() : <span></span></p>
		<p>getSecondes() : <span></span></p>
		<p>toLocaleString() : <span></span></p>
		<p>toLocaleDateString() : <span></span></p>
		<p>toLocaleTimeString() : <span></span></p>
	</div>
</div>
<script type="text/javascript">
	// 현재 날짜와 시간정보를 가진 Date객체생성
	var today = new Date();
	var time = today.getTime();
	var year = today.getFullYear();
	var month = today.getMonth();
	var date = today.getDate();
	var hours = today.getHours();
	var minutes = today.getMinutes();
	var seconds = today.getSeconds();
	var dateString1 = today.toLocaleString();
	var dateString2 = today.toLocaleDateString();
	var dateString3 = today.toLocaleTimeString();
	
	document.querySelector("#box p:first-child span").textContent = today;
	document.querySelector("#box p:nth-child(2) span").textContent = time;
	document.querySelector("#box p:nth-child(3) span").textContent = year;
	document.querySelector("#box p:nth-child(4) span").textContent = month;
	document.querySelector("#box p:nth-child(5) span").textContent = date;
	document.querySelector("#box p:nth-child(6) span").textContent = hours;
	document.querySelector("#box p:nth-child(7) span").textContent = minutes;
	document.querySelector("#box p:nth-child(8) span").textContent = seconds;
	document.querySelector("#box p:nth-child(9) span").textContent = dateString1;
	document.querySelector("#box p:nth-child(10) span").textContent = dateString2;
	document.querySelector("#box p:nth-child(11) span").textContent = dateString3;
	
	function initDate() {
		var text = getDateString(new Date());
		document.getElementById("date-field").value = text;
		
	}
	
	function beforeThreeDays() {
		var now = new Date();
		var time = now.getTime();
		var threeDaysTime = 60*60*24*3*1000;
		var beforeDay = new Date(time - threeDaysTime);
		
		var text = getDateString(beforeDay);
		document.getElementById("start-date-field").value = text;
	}
	
	function beforeOneWeek() {
		var now = new Date();
		var time = now.getTime();
		var threeDaysTime = 60*60*24*7*1000;
		var beforeDay = new Date(time - threeDaysTime);
		
		var text = getDateString(beforeDay);
		document.getElementById("start-date-field").value = text;
	}
	
	function getDateString(date) {
		var year = date.getFullYear();
		var month = date.getMonth() + 1;
		var day = date.getDate();
		
		month = month >= 10 ? month : '0'+month;
		day = day >= 10 ? day : '0'+day
		
		return year + "-" + month + "-" + day;
	}
	
</script>
</body>
</html>
