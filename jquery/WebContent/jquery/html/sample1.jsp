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
  		.on {display: block;}
  		.off {display: none;}
  		.highlight{background-color: yellow;}
  	</style>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>HTML 조작하기</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-6" id="get-box">
			<h3>조회기능</h3>
			
			<div>안녕하세요</div>
			<div>
				<h4>안내사항</h4>
				<p>html() 메소드는 태그를 포함해서 조회한다.</p>
			</div>
			<div>
				<input type="text" id="field-1" />
				<input type="checkbox" id="field-2" value="java" /> 자바
				<input type="radio" id="field-3" value="male" checked="checked" /> 남자
			</div>
			<div>
				<input type="text" id="field-4" value="홍길동" />
			</div>
			<div></div>
			<div>
				<button class="btn btn-default">텍스트 조회</button>
				<button class="btn btn-default">html 컨텐츠 조회</button>
				<button class="btn btn-default">프로퍼티 조회</button>
				<button class="btn btn-default">속성 조회</button>
				<button class="btn btn-default">입력필드값 조회</button>
			</div>
		</div>
		<div class="col-sm-6" id="set-box">
			<h3>변경기능</h3>
			<div>
				<p>내용을 변경해보세요</p>
			</div>
			<div>
				<h3>메뉴</h3>
				<p>2020년 1월 1일부터 전 메뉴의 가격이 <strong>1000</strong>원 인상되었습니다.</p>
			</div>
			<div>
				<input type="text" id="field-1" />
				<input type="checkbox" id="field-2" />
				<input type="radio" id="field-3" />
			</div>
			<div>
				<input type="text" id="field-4" />
				<textarea rows="3" id="field-5"></textarea>
				<select id="field-6">
					<option value=""> -- 선택하세요 -- </option>			
					<option value="SE"> 서울</option>			
					<option value="KG"> 경기</option>			
					<option value="IC"> 인천</option>			
				</select>
			</div>
			<div>
				<button class="btn btn-default">텍스트 변경</button>
				<button class="btn btn-default">html컨텐츠 변경</button>
				<button class="btn btn-default">프로퍼티 변경</button>
				<button class="btn btn-default">입력필드값 변경</button>
			</div>
		</div>
		<div class="col-sm-6" id="add-box">
			<h3>추가기능</h3>
			<div style="border: 1px solid black; padding: 5px;">
				<ul style="border: 1px solid black; padding: 5px;">
					<li>item 1</li>
					<li>item 2</li>
					<li>item 3</li>
				</ul>
			</div>
			<div>
				<button class="btn btn-default">Append</button>
				<button class="btn btn-default">Prepend</button>
				<button class="btn btn-default">After</button>
				<button class="btn btn-default">Before</button>
			</div>
		</div>
		<div class="col-sm-6" id="remove-box">
			<h3>삭제기능</h3>
			<div style="border: 2px solid black; padding: 10px; margin: 10px;">
				<h3>삭제하기</h3>
				<p>empty()는 해당 엘리먼트는 남기고 자식 엘리먼트는 전부 삭제한다.</p>
			</div>
			<div style="border: 2px solid black; padding: 10px; margin: 10px;">
				<h3>삭제하기</h3>
				<p>remove()는 해당 엘리먼트는 남기고 자식 엘리먼트는 전부 삭제한다.</p>
			</div>
			<div>
				<button class="btn btn-default">empty</button>
				<button class="btn btn-default">remove</button>
			</div>
		</div>
		<div class="col-sm-6" id="add-remove-box">
			<h3>클래스 조작기능</h3>
			<div>
				<ul id="menu-list">
					<li id="news-menu" class="highlight">뉴스</li>
					<li id="ent-menu">연예</li>
					<li id="sports-menu">스포츠</li>
				</ul>
			</div>
			<div id="news-box" class="on">
				<p>뉴스 속보입니다.</p>
				<p>뉴스 속보입니다.</p>
				<p>뉴스 속보입니다.</p>
				<p>뉴스 속보입니다.</p>
				<p>뉴스 속보입니다.</p>
			</div>
			<div id="ent-box" class="off">
				<p>연예 속보입니다.</p>
				<p>연예 속보입니다.</p>
				<p>연예 속보입니다.</p>
				<p>연예 속보입니다.</p>
				<p>연예 속보입니다.</p>
			</div>
			<div id="sports-box" class="off">
				<p>스포츠 속보입니다.</p>
				<p>스포츠 속보입니다.</p>
				<p>스포츠 속보입니다.</p>
				<p>스포츠 속보입니다.</p>
				<p>스포츠 속보입니다.</p>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	// class 조작기능
	$("#news-menu").click(function() {
		$("#menu-list li").removeClass('highlight');
		$(this).addClass("highlight");
		
		$("#add-remove-box div[id$=box]").removeClass("on").addClass("off");
		$("#news-box").removeClass('off').addClass("on");
	});
	
	$("#ent-menu").click(function() {
		$("#menu-list li").removeClass('highlight');
		$(this).addClass("highlight");
		
		$("#add-remove-box div[id$=box]").removeClass("on").addClass("off");
		$("#ent-box").removeClass('off').addClass("on");
	});
	
	$("#sports-menu").click(function() {
		$("#menu-list li").removeClass('highlight');
		$(this).addClass("highlight");
		
		$("#add-remove-box div[id$=box]").removeClass("on").addClass("off");
		$("#sports-box").removeClass('off').addClass("on");
	});
	
	//추가기능
	$("#add-box button:eq(0)").click(function() {
		$("#add-box ul").append("<li>Append</li>");
	});
	$("#add-box button:eq(1)").click(function() {
		$("#add-box ul").prepend("<li>Prepend</li>");
	});
	$("#add-box button:eq(2)").click(function() {
		$("#add-box ul").after("<p>After</p>");
	});
	$("#add-box button:eq(3)").click(function() {
		$("#add-box ul").before("<p>Before</p>");
	});

	// 변경기능
	$("#set-box button:eq(0)").click(function() {
		$("#set-box p:first").text("지나친 음주는 건강을 해칩니다.");
	});
	$("#set-box button:eq(1)").click(function() {
		$("#set-box p:eq(1)").html("2020년 1월 1일부터 전 메뉴의 가격이 <strong>2000</strong>원 인상되었습니다.");
	});
	$("#set-box button:eq(2)").click(function() {
		$("#set-box #field-1").prop("readOnly", true);
		$("#set-box #field-2").prop("checked", true);
		$("#set-box #field-3").prop("checked", true);
	});
	$("#set-box button:eq(3)").click(function() {
		$("#set-box #field-4").val("홍길동");
		$("#set-box #field-5").val("나는 천하무적 홍길동 두목이다.");
		//$("#set-box #field-6").val("IC");
		$("#set-box #field-6").prop('selectedIndex', 1);
	});

	//조회기능
	$("#get-box button:eq(0)").click(function() {
		var content0 = $("#get-box div:eq(0)").text();
		var content1 = $("#get-box div:eq(1)").text();
		
		console.log("content0", content0);
		console.log("content1", content1);
	});
	$("#get-box button:eq(1)").click(function() {
		var content0 = $("#get-box div:eq(0)").html();
		var content1 = $("#get-box div:eq(1)").html();
		
		console.log("content0", content0);
		console.log("content1", content1);
		
	});
	$("#get-box button:eq(2)").click(function() {
		var prop1 = $("#get-box div:eq(2) input:eq(0)").prop("disabled");
		var prop2 = $("#get-box div:eq(2) input:eq(1)").prop("checked");
		var prop3 = $("#get-box div:eq(2) input:eq(2)").prop("checked");
		
		console.log("prop1 비활성화여부 - ", prop1);
		console.log("prop2 체크여부 - ", prop2);
		console.log("prop3 체크여부 - ", prop3);
	});
	$("#get-box button:eq(3)").click(function() {
		var attr1 = $("#get-box div:eq(3) input").attr("type");
		var attr2 = $("#get-box div:eq(3) input").attr("name");
		var attr3 = $("#get-box div:eq(3) input").attr("id");
		var attr4 = $("#get-box div:eq(3) input").attr("value");
		
		console.log("type-", attr1, "name-", attr2, "id-", attr3, "value", attr4);
	});
	
	$("#get-box button:eq(4)").click(function() {
		var value1 = $("#field-1").val();
		var value2 = $("#field-2").val();
		var value3 = $("#field-3").val();
		var value4 = $("#field-4").val();
		
		console.log("field-1", value1, "field-2", value2, "field-3", value3, "field-4", value4);
	});
	
	//삭제기능
	$("#remove-box button:eq(0)").click(function() {
		$("#remove-box div:eq(0)").empty()
	});
	$("#remove-box button:eq(1)").click(function() {
		$("#remove-box div:eq(1)").remove()
	});
	
</script>
</body>
</html>
