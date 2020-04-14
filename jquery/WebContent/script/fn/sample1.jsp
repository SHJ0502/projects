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
	function attack(f) {
		console.log(typeof f, f);
		f();
	}
	
	function 총쏘기() {
		console.log("총으로 적을 죽인다.");
	}
	
	function 미사일쏘기() {
		console.log("미사일로 적을 궤멸시킨다..");
	}
	
	attack(총쏘기);
	attack(미사일쏘기);
	attack(function() {
		console.log("누르고", "던지고", "탕탕탕");
	})
</script>
</body>
</html>
