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
		<h1>선택자 연습</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<form class="well">
				<div class="form-group">
					<label>이름</label>
					<input type="text" class="form-control" name="name"/>
				</div>
				<div class="form-group">
					<label>아이디</label>
					<input type="text" class="form-control" name="id"/>
				</div>
				<div class="form-group">
					<label>비밀번호</label>
					<input type="password" class="form-control" name="password"/>
				</div>
				<div class="form-group">
					<label>성별</label>
					<div>
						<label class="radio-inline">
							<input type="radio" value="male" name="gender1" checked="checked"/> 남자
						</label>
						<label class="radio-inline">
							<input type="radio" value="female" name="gender2"/> 여자
						</label>
					</div>
				</div>		
				<div class="form-group">
					<label>기술</label>
					<div>
						<label class="checkbox-inline">
							<input type="checkbox" value="java" name="skill1" checked="checked"/> 자바
						</label>
						<label class="checkbox-inline">
							<input type="checkbox" value="c" name="skill2"/> C언어
						</label>
						<label class="checkbox-inline">
							<input type="checkbox" value="python" name="skill3" checked="checked"/> 파이썬
						</label>
						<label class="checkbox-inline">
							<input type="checkbox" value="hadoop" name="skill4"/> 하둡
						</label>
					</div>
				</div>
				<div class="form-group">
					<label>경력사항</label>
					<select class="form-control" name="career">
						<option value="-1">경력무관</option>
						<option value="0">신입</option>
						<option value="3">3년이상</option>
						<option value="5">5년이상</option>
						<option value="7">7년이상</option>
					</select>
				</div>
				<div class="form-group">
					<label>자기소개</label>
					<textarea rows="6" class="form-control" name="introduce"></textarea>
				</div>
				<div class="text-right">
					<input type="submit" class="btn btn-primary" value="등록">
					<input type="reset" class="btn btn-warning" value="취소">
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
	// input, radio, checkbox, select, textarea를 전부 선택한다.
	//$(":input").css("background-color", 'lightgreen');
	//$(":input").remove();
	
	$(':text').css('background-color', 'red');
	$(':password').css('background-color', 'lightblue');
	$("label:has(:radio)").css('background-color', 'orange');
	$('label:has(:checkbox)').css('background-color', 'maroon');
	$("select").css('background-color', 'grey');
	$("textarea").css('background-color', 'yellow');
	
	$("label:has(:radio:checked)").css('border', '2px solid black');
	$("label:has(:checkbox:checked)").css('border', '2px solid black');
	
	alert($("[name='career'] :selected").text());
	
	//alert("체크된 기술 개수 : " + $(":checkbox:checked").length);
</script>
</body>
</html>
