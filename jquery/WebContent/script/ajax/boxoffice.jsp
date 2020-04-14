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
		<h1>날짜별 박스오피스 조회</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12 text-right">
			<form class="form-inline">
				<div class="form-group">
					<label>조회 날짜 : </label>
					<input type="date" class="form-control" name="day" id="day-field">
					<button type="button" class="btn btn-primary" onclick="refreshTable()">조회</button>
				</div>
			</form>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<table class="table" id="boxoffice-table">
				<thead>
					<tr>
						<th>순위</th>
						<th>영화제목</th>
						<th>개봉일</th>
						<th class="text-right">관객수</th>
						<th class="text-right">누적관객수</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
		</div>
	</div>
</div>
<script type="text/javascript">
	function refreshTable() {
		var date = document.getElementById("day-field").value;
		if(!date) {
			alert("조회날짜를 선택하세요");
			return;
		}
		
		date = date.replace(/-/g, '');
		var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=" + date;
		
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				
				
				var text = xhr.responseText;
				var data = JSON.parse(text);
				var boxofficeList = data.boxOfficeResult.dailyBoxOfficeList;
				
				
				var rows = "";
				boxofficeList.forEach(function(item, index) {
					var ranking = item.rank;
					var title = item.movieNm;
					var openDt = item.openDt;
					var audiCnt = item.audiCnt;
					var audiAcc = item.audiAcc;
					
					rows += "<tr>";
					rows += "<td>"+ranking+"</td>";
					rows += "<td>"+title+"</td>";
					rows += "<td>"+openDt+"</td>";
					rows += "<td class='text-right'>"+numberWithComma(audiCnt)+"명</td>";
					rows += "<td class='text-right'>"+numberWithComma(audiAcc)+"명</td>";
					rows += "</tr>";
					
				});
				
				
				document.querySelector("#boxoffice-table tbody").innerHTML = rows;
			}
		};
		xhr.open("GET", url);
		xhr.send();
	}
	
	function numberWithComma(num) {
		return new Number(num).toLocaleString();
	}
</script>
</body>
</html>
