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
	
	<div class="row" id="img-box">
		<div class="col-sm-4">
			<img src="../../resources/images/a.jpg" class="img-thumbnail" />
		</div>
		<div class="col-sm-4">
			<img src="../../resources/images/b.jpg" class="img-thumbnail" />
		</div>
		<div class="col-sm-4">
			<img src="../../resources/images/c.jpg" class="img-thumbnail" />
		</div>
		<div class="col-sm-4">
			<img src="../../resources/images/d.jpg" class="img-thumbnail" />
		</div>
		<div class="col-sm-4">
			<img src="../../resources/images/e.jpg" class="img-thumbnail" />
		</div>
		<div class="col-sm-4">
			<img src="../../resources/images/f.jpg" class="img-thumbnail" />
		</div>
		<div class="col-sm-4">
			<img src="../../resources/images/g.jpg" class="img-thumbnail" />
		</div>
		<div class="col-sm-4">
			<img src="../../resources/images/h.jpg" class="img-thumbnail" />
		</div>
		<div class="col-sm-4">
			<img src="../../resources/images/a.jpg" class="img-thumbnail" />
		</div>
		<div class="col-sm-4">
			<img src="../../resources/images/b.jpg" class="img-thumbnail" />
		</div>
		<div class="col-sm-4">
			<img src="../../resources/images/c.jpg" class="img-thumbnail" />
		</div>
		<div class="col-sm-4">
			<img src="../../resources/images/d.jpg" class="img-thumbnail" />
		</div>
		<div class="col-sm-4">
			<img src="../../resources/images/e.jpg" class="img-thumbnail" />
		</div>
		<div class="col-sm-4">
			<img src="../../resources/images/f.jpg" class="img-thumbnail" />
		</div>
		<div class="col-sm-4">
			<img src="../../resources/images/g.jpg" class="img-thumbnail" />
		</div>
		<div class="col-sm-4">
			<img src="../../resources/images/h.jpg" class="img-thumbnail" />
		</div>
	</div>
</div>
<script type="text/javascript">
	$(window).scroll(function() {
		var documentHeight = $(document).height();
		var windowHeight = $(window).height();
		var scrollTop = $(window).scrollTop();
		
		if (documentHeight < windowHeight + scrollTop + 100) {
			var htmlContent = "";
			htmlContent += "<div class='col-sm-4'>";
			htmlContent += "<img src='../../resources/images/a.jpg' class='img-thumbnail'>";
			htmlContent += "</div>"
			htmlContent += "<div class='col-sm-4'>";
			htmlContent += "<img src='../../resources/images/a.jpg' class='img-thumbnail'>";
			htmlContent += "</div>"
			htmlContent += "<div class='col-sm-4'>";
			htmlContent += "<img src='../../resources/images/a.jpg' class='img-thumbnail'>";
			htmlContent += "</div>"
			
			$("#img-box").append(htmlContent);
		}
	});
</script>
</body>
</html>
