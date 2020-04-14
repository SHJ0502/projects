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
  		
  	</style>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>필터 메소드 연습</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<h3>시험 성적</h3>
			<table class="table">
				<thead>
					<tr>
						<th>이름</th>
						<th>국어</th>
						<th>영어</th>
						<th>수학</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>강감찬</td>
						<td>35</td>
						<td>70</td>
						<td>50</td>
					</tr>
					<tr>
						<td>김유신</td>
						<td>80</td>
						<td>88</td>
						<td>91</td>
					</tr>
					<tr>
						<td>류관순</td>
						<td>67</td>
						<td>87</td>
						<td>71</td>
					</tr>
					<tr>
						<td>이순신</td>
						<td>27</td>
						<td>41</td>
						<td>38</td>
					</tr>
					<tr>
						<td>홍길동</td>
						<td>60</td>
						<td>50</td>
						<td>40</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script type="text/javascript">
	// td중에서 점수가 40점인 것 선택
	//$("td").filter(':contains(40)').css('background-color', 'yellow');
	
	// td중에서 점수가 40점 이하인 것 선택
	/*
	$("td:not(:first-child)").filter(function(index) {
		var score = parseInt($(this).text());
		//if(score <= 40) {
		//	return true;
		//}
		return score <= 40;
	}).css('background-color', 'yellow');
	*/
	
	$("td:not(:first-child)").filter(function(index) {
		var score = parseInt($(this).text());
		return score <= 40;
	}).css('color', 'red')								// td <- 40점 이하 td
	.parent().css('border-bottom', '2px solid red')		// tr <- 40점 이하 td의 부모
	.end()												// td <- 40점 이하 td
	.css('background-color', 'lightgreen')				// td <- 40점 이하 td
	.end()												// td <- filter함수 실행전 td
	.css('font-weight', 'bolder');						// td <- 점수칸 td
	
	/*
		$(td:not(:first-child))			// 점수칸 				td 선택
		.filter(콜백함수).조작()		// 40점 이하			td 선택 <--- 필터함수1
		.parent().조작()				// 40점 이하의 부모		tr 선택 <--- 필터함수2
		.end().조작()					// 필터함수2 실행전으로 되돌아간다. 40점 이하 td 선택
		.end().조작()					// 필터함수1 실행전으로 되돌아간다. 점수칸 td 선택
	*/
	
</script>
</body>
</html>