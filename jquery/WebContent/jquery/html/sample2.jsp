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
  		.heading {font-weight: bold;}
  		.heading.highlight {background-color: #eee;}
  		.section {display: none;}
  	</style>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>jQuery 연습하기</h1>
	</div>
	
	<table class="table">
		<thead>
			<tr>
				<th>순번</th>
				<th>종류</th>
				<th>내용</th>
				<th>등록일</th>
			</tr>
		</thead>
		<tbody>
			<tr id="header-1" class="heading" data-sec="section-1">
				<td>1</td>
				<td>결제</td>
				<td>결제취소는 어떻게 하나요?</td>
				<td>2020.1.10</td>
			</tr>
			<tr id="section-1" class="section">
				<td></td>
				<td colspan="3">
					결제 취소는 배송전에만 가능합니다.<br/>
					결제 취소시 수수료가 발생할 수 있습니다.<br/>
					카드 결제의 경우 카드사의 사정에 따라 카드취소가 즉시 처리되지 않을 수 있습니다.
				</td>
			</tr>
			<tr id="header-2" class="heading" data-sec="section-2">
				<td>2</td>
				<td>결제</td>
				<td>신용카드 혜택은 어떤 것들이 있나요?</td>
				<td>2020.1.10</td>
			</tr>
			<tr id="section-2" class="section">
				<td></td>
				<td colspan="3">
					국민카드로 결제시 10% 할인됩니다.<br/>
					신한 체크카드로 결제시 5% 할인되고, 구매금액의 1%를 포인트로 추가 적립합니다.<br/>
					하나카드로 결제시 문화상품권을 배송물품과 함께 보내드립니다.
				</td>
			</tr>
			<tr id="header-3" class="heading" data-sec="section-3">
				<td>3</td>
				<td>배송</td>
				<td>지역별 배송기간은 어떻게 되나요?</td>
				<td>2020.1.10</td>
			</tr>
			<tr id="section-3" class="section">
				<td></td>
				<td colspan="3">
					서울/경기지역은 10시 이전 주문시 당일 배송됩니다.<br/>
					그 외 지역은 주문한 다음날 배송됩니다.(휴일은 제외)<br/>
					제주도 및 도서 지역은 주문후 3일 이내 배송됩니다.(기상 상황에 따라서 다를 수 있습니다.)
				</td>
			</tr>
		</tbody>
	</table>
</div>
<script type="text/javascript">
	$(".heading").click(function() {
		var sectionId = $(this).attr("data-sec");
		
		
		/*
		$(this)								// <tr id="header-1">
			.addClass("highlight")			// <tr id="header-1">에 highlight를 추가함.
			.siblings()						// <tr id="header-1">의 형제들(다른 tr들) 
			.removeClass("highlight");		// header-1의 형제들에서 highlight를 제거함.
		*/
		$("#" + sectionId).toggleClass("section");
		
		// isClosed는 해당 tr이 section을 가지고 있으면 true		- 상세내용이 표싣하자 얺움
		// isClosed는 해당 tr이 section을 가지고 있지 않으면 false	- 상세내용이 표시됨
		var isClosed = $("#" + sectionId).hasClass('section');
		if(isClosed) {
			$(this).removeClass('highlight');
		} else {
			$(this).addClass('highlight');
		}
		
		
	});
</script>
</body>
</html>
