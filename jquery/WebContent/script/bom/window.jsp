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
  	<style type="text/css">
  		.img-thum {opacity: 0.3;}
  	</style>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>이미지 갤러리</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-6">
			<img alt="그림" src="../resources/images/a.jpg" style="max-width: 100%;" id="big-image-box" class="thumbnail">
		</div>
		<div class="col-sm-6">
			<div class="col-sm-3">
				<img alt="작은 그림" src="../resources/images/a.jpg" style="max-width: 100%;" id="img-1" class="thumbnail img-thum" onclick="showImage(1)">
			</div>
			<div class="col-sm-3">
				<img alt="작은 그림" src="../resources/images/b.jpg" style="max-width: 100%;" id="img-2" class="thumbnail img-thum" onclick="showImage(2)">
			</div>
			<div class="col-sm-3">
				<img alt="작은 그림" src="../resources/images/c.jpg" style="max-width: 100%;" id="img-3" class="thumbnail img-thum" onclick="showImage(3)">
			</div>
			<div class="col-sm-3">
				<img alt="작은 그림" src="../resources/images/d.jpg" style="max-width: 100%;" id="img-4" class="thumbnail img-thum" onclick="showImage(4)">
			</div>
			<div class="col-sm-3">
				<img alt="작은 그림" src="../resources/images/e.jpg" style="max-width: 100%;" id="img-5" class="thumbnail img-thum" onclick="showImage(5)">
			</div>
			<div class="col-sm-3">
				<img alt="작은 그림" src="../resources/images/f.jpg" style="max-width: 100%;" id="img-6" class="thumbnail img-thum" onclick="showImage(6)">
			</div>
			<div class="col-sm-3">
				<img alt="작은 그림" src="../resources/images/g.jpg" style="max-width: 100%;" id="img-7" class="thumbnail img-thum" onclick="showImage(7)">
			</div>
			<div class="col-sm-3">
				<img alt="작은 그림" src="../resources/images/h.jpg" style="max-width: 100%;" id="img-8" class="thumbnail img-thum" onclick="showImage(8)">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12 text-center">
			<button class="btn btn-default btn-sm" id="btn-start" onclick="startImageShow()">시작</button>
			<button class="btn btn-default btn-sm" id="btn-stop" onclick="stopImageShow()" disabled="disabled">중지</button>
		</div>
	</div>
</div>
<script type="text/javascript">
	
	// 전역변수 선언 - 여러 함수에서 값을 공유할 수 있다.
	var intervalId;
	var count = 0;
	var images = ["a.jpg", "b.jpg", "c.jpg", "d.jpg", "e.jpg", "f.jpg", "g.jpg", "h.jpg", ];
	
	function startImageShow() {
		highlightImage(0);
		showBigImage(0);
		intervalId = setInterval(changeImage, 1500);
		
		
		document.getElementById("btn-start").disabled = true;
		document.getElementById("btn-stop").disabled = false;
	}
	
	// 이미지쇼 종료시 실행되는 함수
	function stopImageShow() {
		clearInterval(intervalId);
		
		document.getElementById("btn-start").disabled = false;
		document.getElementById("btn-stop").disabled = true;
	}
	
	// 이미지쇼를 위해서 그림들을 순서대로 바꾸는 함수
	function changeImage() {		
		var index = count%8;
		count++;
		
		highlightImage(index);
		showBigImage(index);
	}
	
	// 선택된 이미지를 보여주는 함수
	function showImage(no) {
		stopImageShow();
		var index = no - 1;
		highlightImage(index);
		showBigImage(index);
	}
	
	// 지정된 인덱스에 해당하는 이미지를 보여주는 함수
	function showBigImage(index) {
		var el = document.getElementById("big-image-box");
		el.setAttribute("src", "../resources/images/" + images[index]);
	}
	
	// 지정된 인덱스에 해당하는 작은 이미지를 하이라이트해주는 함수.
	function highlightImage(index) {
		var imgCollection = document.querySelectorAll(".img-thum");
		for (var i=0; i<imgCollection.length; i++) {
			var img = imgCollection.item(i);
			img.style.opacity = '0.3';
		}
		
		document.getElementById("img-" + (index+1)).style.opacity = "1.0";
	}
</script>
</body>
</html>
