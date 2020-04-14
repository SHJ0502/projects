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
  		
  	</style>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>기타</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<button class="btn btn-default">버튼</button>
			<button class="btn btn-default">버튼</button>
			<button class="btn btn-default">버튼</button>
			<button class="btn btn-default">버튼</button>
			<button class="btn btn-default">버튼</button>
		</div>
	</div>
</div>
<script type="text/javascript">
	$("button").click(function() {
		var idx = $(this).index();
		alert(idx);
	});
</script>
</body>
</html>