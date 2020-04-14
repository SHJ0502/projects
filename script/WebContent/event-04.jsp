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
		<h1>이벤트 기본동작 방해</h1>
	</div>
	
	<div id="big-img-box">
		<img src="resources/images/1.jpg" width="400" height="500" />
	</div>
	<hr/>
	<div id="small-img-box">
		<a href="resources/images/1.jpg" onclick="showBig(event)"><img src="resources/images/1.jpg" width="100" height="120" /></a>
		<a href="resources/images/2.jpg" onclick="showBig(event)"><img src="resources/images/2.jpg" width="100" height="120" /></a>
		<a href="resources/images/3.jpg" onclick="showBig(event)"><img src="resources/images/3.jpg" width="100" height="120" /></a>
		<a href="resources/images/4.jpg" onclick="showBig(event)"><img src="resources/images/4.jpg" width="100" height="120" /></a>
		<a href="resources/images/5.jpg" onclick="showBig(event)"><img src="resources/images/5.jpg" width="100" height="120" /></a>
	</div>
</div>
<script type="text/javascript">
	function showBig(e) {
		e.preventDefault();
		
		var imagePath = e.target.getAttribute("src");
		
		// document.querySelector("#big-img-box img") --> <img/> 엘리먼트
		document.querySelector("#big-img-box img").setAttribute("src", imagePath);
	}
</script>
</body>
</html>
