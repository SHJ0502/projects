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
		<h1>기타 함수</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-6">
			<p>100</p>
			<p>200</p>
			<p>300</p>
			<p>400</p>
			<p>합계 : <span></span></p>
			<div><button class="btn btn-default" id="btn-sum">합계</button></div>
		</div>
		<div class="col-sm-6">
			<ul class="list-group" id="name-list"></ul>
		</div>
		<div><button class="btn btn-default" id="btn-display-name">이름조회</button></div>
	</div>
</div>
<script type="text/javascript">
	$("#btn-sum").click(function() {
		
		/*
		$("p:lt(4)").each(function(index, el) {
			var text = $(el).text();
			console.log(text);
			total += parseInt(text);
		});
		
		$("span").text(total);
		*/
		
		var total=0;
		$("p:lt(4)").each(function() {
			var text = $(this).text();
			total += pareseInt(text);
		});
		
		$("span").text(total);
	});
	
	var names = ["김유신", "강감찬", "이순신", "류관순", "홍길동"];
	$("#btn-display-name").click(function() {
		var $namebox = $("#name-list").empty();
		
		$.each(names, function(index, item) {
			var tag = "<li class='list-group-item'>"+item+"</li>";
			$namebox.append(tag);
		});
	});
</script>
</body>
</html>
