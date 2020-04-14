<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>도서 대여점</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container">
 	<div class="page-header">
 		<h1>회원 가입 폼</h1>
 	</div>
 	<%
 		String fail = request.getParameter("fail");
 	%>
 	
 	<%
 		if ("dup".equals(fail)) {
 	%>
 		<div class="row">
 			<div class="col-sm-12">
 				<div class="alert alert-danger">
 					<strong>회원가입 실패</strong> 동일한 아이디가 이미 존재합니다.
 				</div>
 			</div>
 		</div>
 	<%
 		}
 	%>
 	
 	<div class="row">
 		<div class="col-sm-12">
 			<form id="register-form" action="register.jsp" method="post" enctype="multipart/form-data">
 				<div class="form-group">
 					<label>사용자 이름</label>
 					<input type="text" class="form-control" name="username" id="user-name"/>
 				</div>
 				<div class="form-group">
 					<label>사용자 아이디</label>
 					<input type="text" class="form-control" name="userid" id="user-id"/>
 				</div>
 				<div class="form-group">
 					<label>사용자 비밀번호</label>
 					<input type="password" class="form-control" name="userpwd" id="user-pwd"/>
 				</div>
 				<div class="form-group">
 					<label>사용자 프로필 사진</label>
 					<input type="file" class="form-control" name="userphotofile" id="user-photofile"/>
 				</div>
 				<div class="text-right">
 					<button onclick="checkFormfield()" type="button" class="btn btn-primary">등록</button>
 				</div>
 			</form>
 		</div>
 	</div>
</div>
</body>
<script type="text/javascript">
	function checkFormfield() {
		var name = document.querySelector("#user-name").value;		// input박스안에 값을 가지고 오는 것은 .value를 이용
		if (name == "") {
			alert("이름을 입력하세요");
			return;
		}
		
		var id = document.querySelector("#user-id").value;		// input박스안에 값을 가지고 오는 것은 .value를 이용
		if (id == "") {
			alert("아이디을 입력하세요");
			return;
		}
		
		var pwd = document.querySelector("#user-pwd").value;		// input박스안에 값을 가지고 오는 것은 .value를 이용
		if (pwd == "") {
			alert("비밀번호을 입력하세요");
			return;
		}
		
		var photo = document.querySelector("#user-photofile").value;		// input박스안에 값을 가지고 오는 것은 .value를 이용
		if (photo == "") {
			alert("프로필 사진을 등록하세요");
			return;
		}
		
		document.querySelector("#register-form").submit();
	}
</script>
</html>
