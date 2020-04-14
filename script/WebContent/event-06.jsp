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
					<input type="text" class="form-control" name="userid" id="user-id" value="Guest" 
							onfocus="clearTextField('user-id')" 
							onchange="changeTextField('user-id')"/>
				</div>
				<div class="form-group">
					<label>비밀번호</label>
					<input type="password" class="form-control" name="userpwd" id="user-pwd" 
							onfocus="clearTextField('user-pwd')"
							onkeyup="readInputField('user-pwd')" />
				</div>
				<div class="form-group">
					<label>성별</label>
					<div>
						<label class="form-inline">
							<input type="radio" name="user-gender" value="female" id="user-gender-f" checked="checked" onchange="getCheckedValue(event)"> 여자
						</label>
						<label class="form-inline">
							<input type="radio" name="user-gender" value="male" id="user-gender-m" onchange="getCheckedValue(event)"> 남자
						</label>
					</div>
				</div>
				<div class="form-group">
					<label>거주지</label>
					<select class="form-control" name="userlocation" id="user-loc" onchange="getSelectedValue(event)">
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
							<input type="checkbox" name="user-skill" value="c" id="user-skill-1" checked="checked" onchange="getCheckedValue(event)"> c언어
						</label>
						<label class="form-inline">
							<input type="checkbox" name="user-skill" value="java" id="user-skill-2" onchange="getCheckedValue(event)"> 자바
						</label>
						<label class="form-inline">
							<input type="checkbox" name="user-skill" value="python" id="user-skill-3" onchange="getCheckedValue(event)"> 파이썬
						</label>
					</div>
				</div>
				<div class="form-group">
					<label>사진</label>
					<input type="file" class="form-control" name="userphoto" id="user-photo">
				</div>
				<div class="form-group">
					<label>자기소개</label>
					<textarea rows="6" class="form-control" name="userinfo" id="user-info"></textarea>
				</div>
				<div class="text-right">
					<input type="reset" class="btn btn-warning" value="초기화" />
					<input type="submit" class="btn btn-primary" value="제출" />
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
	// input 박스가 포커스를 획득하면 실행되는 메소드
	function clearTextField(id) {
		// inputbox가 선택됨
		// inputbox의 값을 변경하는 하는 방법 -> inputbox엘리먼트.value = "변경할 값"
		document.querySelector("#" + id).value = "";
	}
	
	// input 박스의 값이 변경되면 실행되는 메소드
	// input 박스의 값의 입력을 완료하고 다른 입력필드로 옮겨갔을 때 실행된다.
	// * 새로 입력한 값이 이전 값과 달라졌을 때만 실행된다.
	function changeTextField(id) {
		console.log("텍스트필드의 값이 변경되었습니다.");
		// input박스의 값을 조회하는 방법 -> var 변수명 = inputbox엘리먼트.value
		var userId = document.querySelector("#" + id).value;
		console.log("새로 입력한 아이디", userId);
	}
	
	// input 박스에 값을 입력할 때마다 실행되는 메소드 
	function readInputField(id) {
		console.log("텍스트필드에 값을 입력할 때마다 값을 읽어옵니다.");
		var userPwd = document.querySelector("#" + id).value;
		console.log("비밀번호", userPwd);
	}
	
	//라디오버튼, 체크박스가 체크될 때 마다 실행되는 메소드
	function getCheckedValue(e) {
		var isChecked = e.target.checked;
		var val = e.target.value;
		if (isChecked) {
			console.log("체크여부", isChecked, "체크된 값", val);
		}
	}
	
	// select박스의 선택항목이 변경될 때마다 실행되는 메소드
	function getSelectedValue(e) {
		var val = e.target.value;
		console.log("선택된 항목의 값", val);
	}
</script>
</body>
</html>
