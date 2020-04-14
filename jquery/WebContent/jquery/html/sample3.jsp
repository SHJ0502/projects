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
		<h1>jQuery 연습</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<h3>경력사항 <button class="btn btn-primary btn-xs" id="btn-add-item">추가</button></h3>
			
			<div id="career-box">
				<div id="item-1">
					<input type="text" />
					<button class="btn btn-danger btn-xs" data-no="1">삭제</button>
				</div>
				<div id="item-2">
					<input type="text" />
					<button class="btn btn-danger btn-xs" data-no="2">삭제</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">

	var dataNo = 101;
	$("#btn-add-item").click(function() {
		var row =""; 
		row += "<div id='item-"+ dataNo+"'>";
		row +="<input type='text' />";
		row +="	<button class='btn btn-danger btn-xs' data-no='"+dataNo+"'>삭제</button>";
		row +="</div>";
		
		$("#career-box").append(row);
	});
	
	$("#career-box").on('click', '.btn-danger', function() {
		var no = $(this).attr('data-no');
		$('#item-' + no).remove();
	});
	
	$("#career-box .btn-danger").click(function() {
		// 지금 클릭한 삭제버튼이 this에 들어있음
		
		var no = $(this).attr("data-no");
		// data-no 속성값을 조회함.
		console.log("data-"+ no);
		
		$("#item-" + no).remove();
		// 위에서 조회한 번호에 해당하는 div를 삭제함.
	});
</script>
</body>
</html>
