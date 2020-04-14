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
		<div class="col-sm-4" id="tech-list">
			<h3>보유기술</h3>
			<p>아래의 보유기술이 필요합니다.</p>
			<ul class="list-group">
				<li class="list-group-item required">java</li>
				<li class="list-group-item required">python</li>
				<li class="list-group-item">c</li>
				<li class="list-group-item">c++</li>
				<li class="list-group-item">sql</li>
			</ul>
		</div>
		<div class="col-sm-4" id="license-list">
			<h3>자격증</h3>
			<p>아래의 자격증 하나 이상이 필요합니다.</p>
			<p>기술사 자격증 취득자는 채용시 과장급으로 대우합니다.</p>
			<ul class="list-group">
				<li class="list-group-item required">정보처리</li>
				<li class="list-group-item">정보기기운용사</li>
				<li class="list-group-item">데이터분석사</li>
				<li class="list-group-item">보안전문가</li>
				<li class="list-group-item">통계분석사</li>
			</ul>
		</div>
		<div class="col-sm-4">
			<h3>지원현황</h3>
			<table class="table" id="recruit-table">
				<thead>
					<tr>
						<th>이름</th>
						<th>희망부서</th>
						<th>합격여부</th>
					</tr>
				</thead>
				<tbody>
					<tr class="pass-emp">
						<td>홍길동</td>
						<td>기술1팀</td>
						<td>합격</td>
					</tr>
					<tr class="drop-emp">
						<td>김유신</td>
						<td>데이터분석팀</td>
						<td>불합격</td>
					</tr>
					<tr class="pass-emp">
						<td>강감찬</td>
						<td>데이터분석팀</td>
						<td>합격</td>
					</tr>
					<tr class="">
						<td>이순신</td>
						<td>웹보안팀</td>
						<td></td>
					</tr>
					<tr class="drop-emp">
						<td>류관순</td>
						<td>인프라구축팀</td>
						<td>불합격</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<button class="btn btn-default" id="btn-1">모든 p태그 선택, 배경색 노랑</button>
			<button class="btn btn-default" id="btn-2">필수 보유기술을 선택, 배경색 노랑</button>
			<button class="btn btn-default" id="btn-3">필수 자격증 선택, 배경색 노랑</button>
			<button class="btn btn-default" id="btn-4">필수 보유기술이 아닌 것 선택</button>
			<button class="btn btn-default" id="btn-5">필수 자격증이 아닌 것 선택</button>
			<button class="btn btn-default" id="btn-6">자격증 이름이 통계분석사 인 것 선택</button>
			<button class="btn btn-default" id="btn-7">필수 보유기술과 필수 자격증 선택</button>
			<button class="btn btn-default" id="btn-8">자격증관련 안내 메시지 선택</button>
			<button class="btn btn-default" id="btn-9">테이블의 짝수행들만 선택</button>
			<button class="btn btn-default" id="btn-10">테이블의 합격자들만 선택</button>
			<button class="btn btn-default" id="btn-11">불합격자 중에서 데이터분석팀에 지원한 지원자 선택</button>
			<button class="btn btn-default" id="btn-12">합격여부가 결정되지 않은 지원자 선택</button>
			<button class="btn btn-default" id="btn-13">합격자 중에서 두번째로 합격한 지원자 선택</button>
			<button class="btn btn-default" id="btn-14">데이터분석팀에 지원한 지원자 선택</button>
		</div>
		<div class="col-sm-12">
			<a href="sample9.jsp" class="btn btn-default btn-lg">리로딩</a>
		</div>
	</div>
</div>
<script type="text/javascript">
	$('#btn-1').click(function() {
		$('p').css("background-color", 'yellow');
	});
	
	$('#btn-2').click(function() {
		$("#tech-list li.required").css("background-color", 'yellow');
	});
	
	$('#btn-3').click(function() {
		$('#license-list li.required').css("background-color", 'yellow');
	});
	
	$('#btn-4').click(function() {
		$('#tech-list li:not(.required)').css("background-color", 'red');
	});
	
	$('#btn-5').click(function() {
		$('#license-list li:not(.required)').css("background-color", 'red');
	});
	
	$('#btn-6').click(function() {
		$('#license-list li:contains("통계분석사")').css("background-color", 'blue');
	});
	
	$('#btn-7').click(function() {
		$('#tech-list li.required, #license-list li.required').css("background-color", 'pink');
	});
	
	$('#btn-8').click(function() {
		$('#license-list > p').css("background-color", 'yellow');
	});
	
	$('#btn-9').click(function() {
		$('#recruit-table tbody tr:even').css("background-color", 'yellow');
	});
	
	$('#btn-10').click(function() {
		$('.pass-emp').css("background-color", 'yellow');
	});
	
	$('#btn-11').click(function() {
		$('.drop-emp > td:contains("데이터분석팀")').css("background-color", 'yellow');
	});
	
	$('#btn-12').click(function() {
		$('#recruit-table tbody tr:has(td:nth-child(3):empty)').css("background-color", 'yellow');
	});
	
	$('#btn-13').click(function() {
		$('#recruit-table tbody .pass-emp:eq(1)').css("background-color", 'yellow');
	});
	
	$('#btn-14').click(function() {
		$('#recruit-table tbody tr:has(td:nth-child(2):contains(데이터분석팀))').css("background-color", 'yellow');
	});
	
</script>
</body>
</html>
