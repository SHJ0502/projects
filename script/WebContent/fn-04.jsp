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
  	<script type="text/javascript">
  		function myfn1() {
  			console.log("버튼1이 클릭되었습니다.");
  		}
  		
  		function myfn2() {
  			console.log("버튼2가 클릭되었습니다.");
  		}
  		
  		function hideBox() {
  			document.querySelector("#box").style.display = 'none';
  		}
  		
		function showBox() {
			document.querySelector("#box").style.display = 'block';
  		}
		
  	</script>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>함수 실행</h1>
	</div>
	
	<div>
		<button onclick="myfn1()">버튼1</button>
		<button onclick="myfn2()">버튼2</button>
		<button onclick="hideBox()">감추기</button>
		<button onclick="showBox()">보이기</button>
	</div>
	<hr>
	<div id="box" style="width: 200px; height: 200px; background-color: green;"></div>
</div>
</body>
</html>
