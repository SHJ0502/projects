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
		<h1>이벤트 처리</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-4">
			<h3>클릭 이벤트</h3>
			<div>
				<button class="btn btn-default" id="btn-on">on</button>
				<button class="btn btn-default" id="btn-one">one</button>
				<button class="btn btn-default" id="btn-off">off</button>
				<button class="btn btn-default" id="btn-click">click</button>
				
				<button class="btn btn-default" id="btn-trigger">trigger</button>
				<button class="btn btn-default" id="btn-click-click">click-click</button>
				
				<button class="btn btn-primary pull-right" id="btn-btn">버튼</button>
			</div>
		</div>
		<div class="col-sm-4">
			<h3>키보드 이벤트</h3>
			<input type="text" class="form-control" id="input-field-1">
		</div>
		<div class="col-sm-4">
			<h3>마우스 이벤트</h3>
			<div id="box-1" style="width: 250px; height:250px; border: 2px solid black;">
				<img style="opacity: 0.2; width: 100%; height: 100%;" class="img-thumbnail" src="https://mblogthumb-phinf.pstatic.net/MjAxOTA2MjFfMzEg/MDAxNTYxMDc4MTM3MTE5.IfD90IIXb_wc2OiEGOY_OZU4tUe7vi5y1ya5MrYuRagg.9oiFahdBvZx7efd8IM7BH8FYCoIoese84HrZ_kApD_gg.PNG.dreamplatform/%EB%A6%AC%EC%82%AC%EC%88%98.png?type=w800">
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-4">
			<h3>폼 이벤트</h3>
			<form id="my-form" method="post" action="add.hta">
				<div class="form-group">
					<label>아이디</label>
					<input type="text" class="form-control" name="id" />
				</div>
				<div class="form-group">
					<label>비밀번호</label>
					<input type="text" class="form-control" name="pwd1" />
				</div>
				<div class="form-group">
					<label>비밀번호 확인</label>
					<input type="text" class="form-control" name="pwd2" />
				</div>
				<div class="form-group">
					<label>전화번호</label>
					<input type="text" name="tel1" style="width: 50px;"/> -
					<input type="text" name="tel2" style="width: 50px;"/> -
					<input type="text" name="tel3" style="width: 50px;"/>
				</div>
				<div class="form-group">
					<label>결혼여부</label>
					<div>
						<label class="radio-inline">
							<input type="radio" name="married" value="yes" checked="checked" />기혼
						</label>
						<label class="radio-inline">
							<input type="radio" name="married" value="yes" />미혼
						</label>
					</div>
				</div>
				<div class="form-group">
					<label>결혼 기념일</label>
					<input type="date" class="form-control" name="wedding" />
				</div>
				<div>
					<input type="submit" class="btn btn-primary" value="등록" />
				</div>
			</form>
		</div>
		<div class="col-sm-4">
			<h3>기타 이벤트</h3>
		</div>
		<div class="col-sm-4">
			<h3>기타기타 이벤트</h3>
		</div>
	</div>
</div>
<script type="text/javascript">
	// "#btn-off"를 클릭하면 "#btn-off"에 click이벤트 발생시 실행할 콜백함수를 등록한다.
	$("#btn-on").click(function(event) {
		
		// .on(event, callvack)으로 이벤트 핸들러 부착
		$("#btn-btn").on('click', function(event) {
			console.log('버튼이 클릭되었습니다. <---- on');
		});
	});
	
	// "#btn-off"를 클릭하면 "#btn-off"에 click이벤트 발생시 딱 한 번 실행할 콜백함수를 등록한다.
	$("#btn-one").click(function(event) {
		// .one(event, callback)으로 이벤트 핸들러 부착
		$("#btn-btn").one('click', function(event) {
			console.log('버튼이 클릭되었습니다. <---- one');
		});
	});
	
	// "#btn-off"를 클릭하면 "#btn-off"에 click이벤트 관련 처리를 삭제한다.
	$("#btn-off").click(function(event) {
		// .off(event)로 이벤트 핸들러삭제
		$("#btn-btn").off('click');
	});
	
	// "#btn-off"을 클릭하면 "#btn-off"에 click 이벤트 발생시 실행할 콜백함수를 등록한다.
	$("#btn-click").click('click', function(event) {
		
		$("#btn-btn").click(function(event) {
			console.log('버튼이 클릭되었습니다. <---- click');
		});
	});
	
	// "#btn-btn"를 클릭하면 "#btn-btn"에 click이벤트 발생시 실행할 콜백함수를 등록한다.
	$("#btn-trigger").click(function() {
		// .trigger(eventname) 로 btn-btn버튼에서 클릭이벤트가 발생되게 한다.
		$("#btn-btn").trigger('click');
	});
	
	// "#btn-btn"를 클릭하면 "#btn-btn"에 click이벤트 발생시 실행할 콜백함수를 등록한다.
	$("#btn-click-click").click(function() {
		// .click()로 btn-btn버튼에서 클릭이벤트가 발생되게 한다.
		$("#btn-btn").trigger('click');
	});
	
	$("#input-field-1").keydown(function(event) {
		var value = document.getElementById("input-field-1").value;
		console.log("keydown", value, event.which);
	});
	$("#input-field-1").keydown(function(event) {
		var value = document.getElementById("input-field-1").value;
		console.log("keypress", value, event.which);
		
		// 숫자만 입력, 숫자외의 문자는 입력되지 않게 함.
		if (event.which < 48 || event.which > 57) {
			event.preventDefault();
			// 키 이벤트의 기본동작(입력필드에 문자가 입력되는 것)을  방해함.
		}
	});
	$("#input-field-1").keydown(function(event) {
		var value = document.getElementById("input-field-1").value;
		console.log("keyup", value, event.which);
	});
	
	/*
	$("#box-1").mouseenter(function(event) {
		console.log("mouseenter - ", "enter");
	});
	
	$("#box-1").mouseleave(function(event) {
		console.log("mouseleave - ", "leave");
	});
	
	$("#box-1").mouseover(function(event) {
		console.log("mouseover - ", "over");
	});
	
	$("#box-1").mouseout(function(event) {
		console.log("mouseout - ", "out");
	});
	*/
	
	$("#box-1").hover(function(event) {
		$("#box-1 img").css("opacity", "1");
	}, function(event) {
		$("#box-1 img").css("opacity", "0.3");
	});
	
	$("#my-form .form-group :input").focus(function() {
		$(this).css('background-color', 'lightgreen');
	});
	$("#my-form .form-group :input").blur(function() {
		$(this).css('background-color', 'white');
	});
	
	$("input[name=tel1]").keyup(function() {
		var tel1 = $("input[name=tel1]").val();
		if (tel1.length == 3) {
			$("input[name=tel2]").focus()
		}
	});
	$("input[name=tel2]").keyup(function() {
		var tel2 = $("input[name=tel2]").val();
		if (tel2.length == 4) {
			$("input[name=tel3]").focus()
		}
	});
	
	$(":radio[name=married]").change(function() {
		var result = $(this).val();
		if(result == 'yes') {
			// 입력요소 활성화
			$(":input[name=wedding]").prop('disabled', false)
			
		} else if (result == 'no') {
			// 입력요소 비활성화
			$(":input[name=wedding]").prop('disabled', true);
			
		}
	});
	
	$("#my-form").submit(function(event) {
		var id = $("input[name=id]").val();
		var pwd1 = $("input[name=pwd1]").val();
		var pwd2 = $("input[name=pwd2]").val();
		
		if (id == "") {
			alert("아이디를 입력하세요");
			$("input[name=id]").focus();
			//event.preventDefault();
			//return;
			return false;
		}
		if (pwd1 == "") {
			alert("비밀번호를 입력하세요");
			$("input[name=pwd1]").focus();
			//event.preventDefault();
			//return;
			return false;
		}
		if (pwd2 == "") {
			alert("확인용 비밀번호를 입력하세요");
			$("input[name=pwd2]").focus();
			//event.preventDefault();
			//return;
			return false;
		}
		if (pwd1 != pwd2) {
			alert("비밀번호가 일치하지 않습니다.");
			$("input[name=pwd2]").focus();
			//event.preventDefault();
			//return;
			return false;
		}
		return true;
	});
	
</script>
</body>
</html>
