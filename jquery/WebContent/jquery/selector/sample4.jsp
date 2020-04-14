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
  		div {padding: 10px; margin: 3px; border: 1px solid black;}
  	</style>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>선택자 연습</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-6">
			<div id="box-1">
				<h3>선택자 연습1</h3>
				<p>선택자는 많은 연습이 필요합니다.</p>
				<div id="box-content-1" style="border: 1px solid;black; padding: 5px;">
					<p class="text-center">선택자는 jQuery의 가장 중요한 부분이다.</p>
					<p class="text-center">선택자는 CSS3의 선택자와 호환된다.</p>
					<p class="text-center">선택자는 매우 다양하다.</p>
					<p class="text-center">선택자는 jQuery 코딩의 기본문법사항이다.</p>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div id="box-2">
				<h3>선택자 연습2</h3>
				<p>선택자의 다양한 유형을 공부해보자</p>
				<div id="box-content-2" style="border: 1px solid black; padding: 5px;">
					<p>선택자의 종류를 알아보자</p>
					<p>선택자를 활용해보자</p>
					<p>기타 선택자를 알아보자</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>1</th>
							<th>2</th>
							<th>3</th>
							<th>4</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>5</td>
							<td>6</td>
							<td>7</td>
							<td>8</td>
						</tr>
						<tr>
							<td>9</td>
							<td>10</td>
							<td>11</td>
							<td>12</td>
						</tr>
						<tr>
							<td>13</td>
							<td>14</td>
							<td>15</td>
							<td>16</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	//모든 p중에서 첫번째 p
	$("p:first").css("color", "red");
	// 부모한테서 장남인 p들
	$("p:first-child").css("background-color", 'yellow');
	// 모든 p중에서 마지막번째 p
	$("p:last").css("color", "darkgreen");
	// 부모한테서 막내인 p들
	$("p:last-child").css('background-color', 'lightgreen');
	
	// 부모한테서 둘째 자식인  p들
	$("p:nth-child(2)").css("border", "4px solid pink");
	
	$("tbody td:nth-child(1)").css("background-color", 'yellow');
	$("tbody td:nth-child(2)").css("background-color", 'pink');
	$("tbody td:nth-child(3)").css("background-color", 'lightgreen');
	$("tbody td:nth-child(4)").css("background-color", 'lightgrey');
</script>
</body>
</html>
