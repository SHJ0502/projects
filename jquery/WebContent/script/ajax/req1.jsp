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
		<h1>세계의 대표 음식</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-6">
			<div class="btn-group btn-group-justified">
				<div class="btn-group">
					<button type="button" class="btn btn-default" onclick="getFood('kor')">한국</button>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-default" onclick="getFood('jap')">일본</button>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-default" onclick="getFood('usa')">미국</button>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-default" onclick="getFood('ita')">이탈리아</button>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-default" onclick="getFood('fra')">프랑스</button>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<ul class="list-group" id="food-list"></ul>
		</div>
	</div>
</div>
<script type="text/javascript">
	function getFood(nationCode) {
		// XMLHttpRequest 생성
		var xhr = new XMLHttpRequest();
		
		// XHR의 readyState상태가 변경될 때마다 실행될 콜백함수 정의
		xhr.onreadystatechange = function() {
			if (xhr.readyState ==4 && xhr.status == 200) {	// 성공적인 응답이 왔을 때 
				// 서버가 보낸 응답데이터 조회
				var textData = xhr.responseText;
				
				// 응답데이터 처리
				var foodItems = textData.trim().split(",");
				
				// HTML 컨텐츠
				var listItems = "";
				foodItems.forEach(function(item, index) {
					listItems += "<li class='list-group-item'>"+item+"</li>"
				});
				
				// 화면에 반영해서 페이지가 갱신되게 한다.
				document.getElementById("food-list").innerHTML = listItems;
			}
		};
		
		// XHR 초기화하기
		xhr.open("GET", "res1.jsp?code=" + nationCode);
		// 서버로 요청 보내기
		xhr.send();
		
		
	}
</script>
</body>
</html>
