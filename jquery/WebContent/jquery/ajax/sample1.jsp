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
		<h1>jQuery AJAX</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12 text-right">
			<form class="form-inline">
				<div class="form-group">
					<label>조회일자</label>
					<input type="date" class="form-control" name="day" />
					<button type="button" class="btn btn-default" id="btn-get-boxoffice">조회</button>
				</div>
			</form>
		</div>	
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<h3>박스오피스 조회결과</h3>
			<table class="table" id="boxoffice-table">
				<thead>
					<tr>
						<th>순위</th>
						<th>영화제목</th>
						<th>개봉일자</th>
						<th class="text-right">당일관객수</th>
						<th class="text-right">누적관객수</th>
						<th class="text-right">누적수익</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
		</div>
	</div>
</div>
<script type="text/javascript">
	$("#btn-get-boxoffice").click(function(event) {
		// Ajax요청 준비 - URL, data 등을 준비
		var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=20120101";
		
		var day = $("[name=day]").val();
		if (!day) {
			alert("조회날짜를 선택하세요.");
			$("[name=day]").focus();
			return;
		}
		
		day = day.replace(/-/g, '');
		
		// Ajax 요청
		$.get(url, {targetDt:day}, function(data) {
			// 응답데이터 수신
			var boxofficeList = data.boxOfficeResult.dailyBoxOfficeList;
			
			// 응답데이터를 화면에 반영
			var $tbody = $('#boxoffice-table tbody').empty();
			
			$.each(boxofficeList, function(index, item) {
				var rank = item.rank;
				var name = item.movieNm;
				var openday = item.openDt;
				var dayAudi = item.audiCnt;
				var totalAudi = item.audiAcc;
				var totalSales = item.salesAcc;
				totalSales
				var row ="<tr>"
				 row +="<td>"+rank+"</td>"
				 row +="<td>"+name+"</td>"
				 row +="<td>"+openday+"</td>"
				 row +="<td class='text-right'>"+numberWithComma(dayAudi)+"</td>"
				 row +="<td class='text-right'>"+numberWithComma(totalAudi)+"</td>"
				 row +="<td class='text-right'>"+numberWithComma(totalSales)+"</td>"
				 row +="</tr>"
				 
				 $tbody.append(row);
				
			})
			
		}, 'json')
	});
	
	function numberWithComma(num) {
		return new Number(num).toLocaleString();
	}
</script>
</body>
</html>
