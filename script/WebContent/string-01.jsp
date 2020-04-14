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
		<h1>폼 이벤트 연습</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<form id="sample-form" class="well" action="sample.jsp" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label>아이디</label>
					<input type="text" class="form-control" name="userid" id="user-id" value="Guest" />
					<span class="help-block">아이디는 6글자 이상 입력하세요</span>
				</div>
				<div class="form-group">
					<label>비밀번호</label>
					<input type="password" class="form-control" name="userpwd" id="user-pwd"  />
					<span class="help-block">비밀번호는 8 ~ 12글자 이내로 입력하세요</span>
				</div>
				<div class="form-group">
					<label>성별</label>
					<div>
						<label class="form-inline">
							<input type="radio" name="user-gender" value="female" id="user-gender-f" checked="checked" > 여자
						</label>
						<label class="form-inline">
							<input type="radio" name="user-gender" value="male" id="user-gender-m" > 남자
						</label>
					</div>
				</div>
				<div class="form-group">
					<label>거주지</label>
					<select class="form-control" name="userlocation" id="user-loc" >
						<option value="S">서울</option>
						<option value="K">경기</option>
						<option value="I">인천</option>
						<option value="KW">강원</option>
					</select>
				</div>
				<div class="form-group">
					<label>보유 기술</label>
					<div>
						<label class="form-inline">
							<input type="checkbox" name="user-skill" value="c" id="user-skill-1" checked="checked" > c언어
						</label>
						<label class="form-inline">
							<input type="checkbox" name="user-skill" value="java" id="user-skill-2" > 자바
						</label>
						<label class="form-inline">
							<input type="checkbox" name="user-skill" value="python" id="user-skill-3" > 파이썬
						</label>
					</div>
					<span class="help-block">보유기술은 하나이상 선택하세요.</span>
				</div>
				<div class="form-group">
					<label>사진</label>
					<input type="file" class="form-control" name="userphoto" id="user-photo">
				</div>
				<div class="form-group">
					<label>자기소개</label>
					<textarea rows="6" class="form-control" name="userinfo" id="user-info"></textarea>
					<span class="help-block">50자 이내로 작성하세요.</span>
				</div>
				<div class="text-right">
					<input type="reset" class="btn btn-warning" value="초기화" />
					<input type="submit" class="btn btn-primary" onclick="checkform(event)" value="제출" />
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
	function checkform(e) {
		// 가장먼저 제출을 못하게 해야함.
		e.preventDefault();
		
		// 아이디 체크 : 6글자이상
		var userId = document.getElementById("user-id").value.trim();
		if (userId.length == 0) {
			alert("아이디를 입력하세요");
			return;
		}
		if (userId.length < 6) {
			alert("아이디는 6글자 이상 입력하세요");
			return;
		}
		
		// 비밀번호 체크 : 8 ~ 12글자
		var userPwd = document.getElementById("user-pwd").value.trim();
		if (userPwd.length ==0) {
			alert("비밀번호를 입력하세요");
			return;
		}
		if (userPwd.length < 8 || userPwd.length > 12) {
			alert("비밀번호는 8~12글자 이내로 입력하세요.")
			return;
		}
		
		// 보유기술은 1개 이상 체크
		var checkedSkillCheckboxes = document.querySelectorAll("input[name='user-skill']:checked");
		if (checkedSkillCheckboxes.length == 0) {
			alert("보유기술을 하나 이상 체크하세요.");
			return;
		}
		
		document.getElementById("sample-form").submit();
	}
</script>
</body>
</html>
