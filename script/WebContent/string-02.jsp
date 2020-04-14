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
		<h1>string api 연습</h1>
	</div>
	
	<div>
		<input type="text" class="form-control" id="input-field" />
	</div>
	<div>
		<p id="result-view" style="border: 1px solid grey; padding: 20px; margin-top: 10px;"></p>
	</div>
	<div>
		<button class="btn btn-sm" onclick="fn1()">toUpperCase</button>
		<button class="btn btn-sm" onclick="fn2()">toLowerCase</button>
		<button class="btn btn-sm" onclick="fn3()">substr</button>
		<button class="btn btn-sm" onclick="fn4()">substring</button>
		<button class="btn btn-sm" onclick="fn5()">replace</button>
		<button class="btn btn-sm" onclick="fn6()">split</button>
		<button class="btn btn-sm" onclick="fn7()">indexOf</button>
		<button class="btn btn-sm" onclick="fn8()">charAt</button>
	</div>
</div>
<script type="text/javascript">
	function fn1() {
		var src = document.getElementById("input-field").value;
		var result = src.toUpperCase();
		
		document.getElementById('result-view').textContent = result;
	}
	function fn2() {
		var src = document.getElementById("input-field").value;
		var result = src.toLowerCase();
		
		document.getElementById('result-view').textContent = result;	
		}
	function fn3() {
		var src = document.getElementById("input-field").value;
		var result = src.substr(2, 4);
		
		document.getElementById('result-view').textContent = result;
	}
	function fn4() {
		var src = document.getElementById("input-field").value;
		var result = src.substring(2, 4);
		
		document.getElementById('result-view').textContent = result;
	}
	function fn5() {
		var src = document.getElementById("input-field").value;
		//var result = src.replace('red', 'blue');
		var result = src.replace(/red/gi, 'blue');
		
		document.getElementById('result-view').textContent = result;
	}
	function fn6() {
		var src = document.getElementById("input-field").value;
		var items = src.split(',');
		
		var content = "";
		for (var i=0; i<items.length; i++) {
			var item = items[i];
			content += '<span class="text-danger">'+item+'</span>';
		}
		
		document.getElementById('result-view').innerHTML = content;
	}
	function fn7() {
		var src = document.getElementById("input-field").value;
		var result = src.indexOf('안녕');
		
		document.getElementById('result-view').textContent = result;
	}
	function fn8() {
		var src = document.getElementById("input-field").value;
		var result = src.chatAt(0);
		
		document.getElementById('result-view').textContent = result;
	}
</script>
</body>
</html>
