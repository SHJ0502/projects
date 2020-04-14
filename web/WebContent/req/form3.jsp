<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>요청 파라미터 연습</h1>
	
	<h3>요청 파라미터로 폼 입력값 전달하기</h3>
	<form action="form4.jsp" method="post">
		<div>
			<label>아이디</label>
			<input type="text" name="userid" />
		</div>
		<div>
			<label>비밀번호</label>
			<input type="password" name="userpwd" />
		</div>
		<div>
			<label>생년월일</label>
			<input type="date" name="userbirth" />
		</div>
		<div>
			<label>학력사항</label>
			<select name="usergrade">
				<option value="M">중학교졸</option>
				<option value="H">고등학교졸</option>
				<option value="C">초대졸</option>
				<option value="U">대졸</option>
			</select>
		</div>
		<div>
			<label>성별</label>
			<input type="radio" name="usergender" value="F" checked="checked"/>여성
			<input type="radio" name="usergender" value="M" />남성		
		</div>
		<div>
			<label>보유기술</label>
			<input type="checkbox" name="usertech" value="JAVA" checked="checked"/> 자바
			<input type="checkbox" name="usertech" value="C" /> C
			<input type="checkbox" name="usertech" value="PYTHON" /> Python
			<input type="checkbox" name="usertech" value="R" /> R
			<input type="checkbox" name="usertech" value="JAVASCRIPT" /> Javascript
		</div>
		<div>
			<label>추가내용</label>
			<textarea rows="5" name="useretc"></textarea>
		</div>
		<div>
			<input type="submit" value="제출" />
		</div>
		</form>
</body>
</html>