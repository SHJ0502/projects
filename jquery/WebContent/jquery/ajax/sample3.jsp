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
  	<script src="https://unpkg.com/mustache@latest"></script>
</head>
<body>
<div class="container">
	<div class="page-header">
		<h1>현재 날씨</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<form class="form-inline">
				<div class="form-group">
					<label>조회 지역 : </label>
					<select class="form-control" name="location">
						<option value="" selected disabled>-- 선택하세요 --</option>
						<option value="Seoul"> 서울특별시</option>
						<option value="Busan"> 부산광역시</option>
						<option value="Daegu"> 대구광역시</option>
						<option value="Gwangju"> 광주광역시</option>
						<option value="Incheon"> 인천광역시</option>
						<option value="Daejeon"> 대전광역시</option>
						<option value="Ulsan"> 울산광역시</option>
					</select>
					<button type="button" class="btn btn-default" disabled="disabled" id="btn-get-weather">조회</button>
				</div>
			</form>
		</div>
	</div>
	<hr/>
	<div class="row" id="weather-box">
		
	</div>
</div>
<script type="text/template" id="weather-template">
<div class="col-sm-4">
	<div class="panel panel-info">
		<div class="panel-heading">{{location}} <button class="btn btn-danger btn-xs pull-right">삭제</button></div>
		<table class="table table-bordered">
			<tr>
				<th>현재 기온</th>
				<td>{{ct}}&#176;</td>
				<th>체감 기온</th>
				<td>{{ft}}&#176;</td>
				</tr>
			<tr>
				<th>최저 기온</th>
				<td>{{mint}}&#176;</td>
				<th>최고 기온</th>
				<td>{{maxt}}&#176;</td>
			</tr>
			<tr>
				<th>기압</th>
				<td>{{p}}hPa</td>
				<th>습도</th>
				<td>{{h}}%</td>
			</tr>
			<tr>
				<th>일출시간</th>
				<td>{{sr}}</td>
				<th>일몰시간</th>
				<td>{{ss}}</td>
			</tr>
		</table>
	</div>
</div>
</script>
<script type="text/javascript">
	
	$("#weather-box").on('click', '.btn-danger', function() {
		$(this).closest('.col-sm-4').remove();
	})
	
	$("select[name=location]").change(function() {
		$("#btn-get-weather").prop('disabled', false);
	});
	
	$("#btn-get-weather").click(function() {
		var loc = $("select[name=location]").val();
		var locName = $("select[name=location] option:selected").text().trim();
		
		if ($('#weather-box .panel-heading:contains('+locName+')').length != 0) {
			alert("해당 지역은 이미 조회된 지역입니다.");
			return;
		}
		
		$.ajax({
			type: "GET",
			url: "http://api.openweathermap.org/data/2.5/weather",
			data: {appid:"8bdc985bb2a23dad2a22ed654442fd73", units:"metric", q:loc},
			dataType: 'json',
			success: function(data) {
				var temp = data.main.temp;
				var feelsLike = data.main.feels_like;
				var tempMin = data.main.temp_min;
				var tempMax = data.main.temp_max;
				var pressure = data.main.pressure;
				var humidity = data.main.humidity;
				var sunrise = new Date(data.sys.sunrise-(60*60*1000*9)).toLocaleTimeString();
				var sunset = new Date(data.sys.sunset-(60*60*1000*9)).toLocaleTimeString();
				
				// 템플릿에 표시할 값을 가진 객체
				var weather = {ct:temp, ft:feelsLike, mint:tempMin, maxt:tempMax, p:pressure,
								h:humidity, sr:sunrise, ss:sunset, location:locName};
				
				// 템플릿
				var template = $("#weather-template").html();
				// Mustache.render(템플릿, 값을 가진 객체) --> 템플릿의 {{}}자리에 값이 치환된 HTML 컨텐츠가 획득됨.
				var htmlContent = Mustache.render(template, weather);
				
				$("#weather-box").append(htmlContent);
				console.log(template, htmlContent);
			},
			error:function() {
				console.log("에러발생");
			}
		});
	});
</script>
</body>
</html>
