<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>주소록</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="page-header">
		<c:choose>
			<c:when test="${empty contact }">
				<h1>주소록 신규 등록폼</h1>
			</c:when>
			<c:otherwise>
				<h1>주소록 수정 폼</h1>
			</c:otherwise>
		</c:choose>	
	</div>
	
	<c:if test="${not empty param.fail and param.fail eq 'dup' }">
		<div class="row">
			<div class="col-sm-8 com-sm-offset-2">
				<div class="alert alert-danger">
					<strong>등록실패</strong> 동일한 전화번호가 이미 등록되어 있습니다.
				</div>
			</div>
		</div>
	</c:if>
	
	<div class="row">
		<div class="col-sm-12">
			<form id="contact-form" class="well" method="post" action="add.hta">
				<input type="hidden" id="contact-no" name="no" value="${contact.no }">
				<div class="form-group">
					<label>이름</label>
					<input type="text" class="form-control" id="contact-name" name="name" value="${contact.name }"/>
				</div>
				<div class="form-group">
					<label>전화번호</label>
					<input type="text" class="form-control" id="contact-tel" name="tel" value="${contact.tel }"/>
				</div>
				<div class="form-group">
					<label>팩스</label>
					<input type="text" class="form-control" id="contact-fax" name="fax" value="${contact.fax }"/>
				</div>
				<div class="form-group">
					<label>이메일</label>
					<input type="text" class="form-control" id="contact-email" name="email" value="${contact.email }"/>
				</div>
				<div class="form-group">
					<label>주소</label>
					<input type="text" class="form-control" id="contact-address" name="address" value="${contact.address }"/>
				</div>
				<div class="text-right">
					<a href="home.hta" class="btn btn-default">취소</a>
					<c:choose>
						<c:when test="${empty contact }">
							<button type="button" class="btn btn-primary" onclick="submitContactForm()">등록</button>
						</c:when>
						<c:otherwise>
							<button type="button" class="btn btn-primary" onclick="submitContactForm()">수정</button>
						</c:otherwise>
					</c:choose>
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
	function submitContactForm() {
		var no = document.getElementById("contact-no").value;
		var name = document.getElementById("contact-name").value;
		var tel = document.getElementById("contact-tel").value;
		var fax = document.getElementById("contact-fax").value;
		var email = document.getElementById("contact-email").value;
		
		var nameRegExp = /^[가-힣]{2,}$/;
		var telRegExp =/^\d{3}-\d{3,4}-\d{4}$/;		
		var faxRegExp =/^\d{3}-\d{3,4}-\d{4}$/;
		var emailRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

		if (!name) {
			alert("이름은 필수입력값입니다.");
			return false;
		}
		if (!nameRegExp.test(name)) {
			alert("이름은 한글만 입력하세요.");
			return false;
		}
		if (tel == "") {
			alert("전화번호는 필수입력값입니다.");
			return false;
		}
		if (!telRegExp.test(tel)) {
			alert("유효한 전화번호가 아닙니다.");
			return false;
		}
		
		if (fax && !faxRegExp.test(fax)) {
			alert("유효한 팩스번호가 아닙니다.");
			return false;
		}
		if (email && !emailRegExp.test(email)) {
			alert("유효한 email이 아닙니다.");
			return false;
		}
		
		if (no) {
			
			document.getElementById("contact-form").setAttribute("action", "modify.hta");
			
		} 
		
		document.getElementById("contact-form").submit();
		
	}
</script>
</body>
</html>
