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
		<h1>이벤트 처리</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<button class="btn btn-primary btn-lg" id="btn-1" onclick="fn1()">클릭</button>
			
			
			<button class="btn btn-primary btn-lg" id="btn-2" >클릭</button>
			<button class="btn btn-primary btn-lg" id="btn-3" >클릭</button>
			
			
			<button class="btn btn-primary btn-lg" id="btn-4" >클릭</button>
			<button class="btn btn-primary btn-lg" id="btn-5" >클릭</button>
			
			<button class="btn btn-primary btn-lg" id="btn-6" >클릭</button>
		</div>
	</div>
</div>
<script type="text/javascript">
	function fn1() {
		alert("첫번째 버튼이 클릭되었습니다.");
	}
	
	
	// 이벤트 핸들러 함수를 엘리먼트객체의 onclick 프로퍼티에 저장하기.
	function fn2() {
		alert("두번째 버튼이 클릭되었습니다.");		
	}
	document.getElementById("btn-2").onclick = fn2;
	
	document.getElementById("btn-3").onclick = function fn3(event) {
		alert("세번째 버튼이 클릭되었습니다.");	
	}
	
	// 이벤트 핸들러 함수를 addEventListner()함수의 매개변수로 전달하기.
	function fn4() {
		alert("네번째 버튼이 클릭되었습니다.");
	}
	document.getElementById("btn-4").addEventListener('click', fn4);
	
	document.getElementById("btn-5").addEventListener('click', function() {
		alert("다섯번째 버튼이 클릭되었습니다.");	
	});
	
	// id가 btn-6인 엘리먼트를 찾아서 클릭했을때 함수를 실행하라. 라는뜻.
	$("#btn-6").click(function() {
		alert("여섯번째 버튼이 클릭되었습니다.");
	});
	
	
</script>
</body>
</html>
