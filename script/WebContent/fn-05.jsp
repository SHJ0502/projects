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
		<h1>뉴스</h1>
	</div> 
	
	<div class="row"></div>
		<div class="col-12">
			<div class="btn-group btn-group-justified">
				<div class="btn-group">
					<button type="button" class="btn btn-default" onclick="showbox1()">속보</button>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-default" onclick="showbox2()">뉴스</button>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-default" onclick="showbox3()">스포츠</button>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-default" onclick="showbox4()">연예</button>
				</div>
			</div>
		</div>
		
		<div class="row" id="newsbox-1">
			<div class="col-sm-12">
				<h3>속보입니다.</h3>
			</div>
		</div>
		<div class="row" id="newsbox-2">
			<div class="col-sm-12">
				<h3>일반뉴스 입니다.</h3>
			</div>
		</div>
		<div class="row" id="newsbox-3">
			<div class="col-sm-12">
				<h3>스포츠 뉴스입니다.</h3>
			</div>
		</div>
		<div class="row" id="newsbox-4">
			<div class="col-sm-12" >
				<h3>연예 뉴스입니다.</h3>
			</div>
		</div>
		
  	<script type="text/javascript">
  		// 즉시 실행함수
  		// 웹페이지 로딩시 페이지와 관련된 초기화 작업을 실행할 목적으로 사용한다.
  		(function() {
			document.querySelector("#newsbox-2").style.display = 'none';
			document.querySelector("#newsbox-3").style.display = 'none';
			document.querySelector("#newsbox-4").style.display = 'none';
		})();
  		
  		// 다른 함수에서 호출하는(실해하는) 함수
  		function hideAllBox() {
  			document.querySelector("#newsbox-1").style.display = 'none';
  			document.querySelector("#newsbox-2").style.display = 'none';
  			document.querySelector("#newsbox-3").style.display = 'none';
  			document.querySelector("#newsbox-4").style.display = 'none';
		}
  	
  		// 버튼 클릭시 실행되는 함수
  		function showbox1() {
  			hideAllBox();	// 수행문에서 다른 함수 실행
  			document.querySelector("#newsbox-1").style.display = '';
		}
  		
  		// 버튼 클릭시 실행되는 함수
		function showbox2() {
			hideAllBox();	// 수행문에서 다른 함수 실행
			document.querySelector("#newsbox-2").style.display = '';	
				}
		
  		// 버튼 클릭시 실행되는 함수
		function showbox3() {
			hideAllBox();	// 수행문에서 다른 함수 실행
			document.querySelector("#newsbox-3").style.display = '';
		}
		
  		// 버튼 클릭시 실행되는 함수
		function showbox4() {
			hideAllBox();	// 수행문에서 다른 함수 실행
			document.querySelector("#newsbox-4").style.display = '';
		}
		
  	</script>
</div>
</body>
</html>
