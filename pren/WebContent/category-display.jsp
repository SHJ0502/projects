<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>프랜</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  	<style type="text/css">
  	.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
	}
	.dropdown-toggle::after {
    display:none;
	}
	.dropdown-menu::before, 
	.dropdown-menu::after {
    border: none;
    content: none;
	}
	.red, .red a {
	
  	color: red;
	}
	
  	</style>
</head>
<%@ include file="../../common/nav3.jsp" %>
<body>
<div class="container">
	<hr/>
	<div class="row">
		<form class="form-inline" style="text-align: right;">
			<div class="form-group">
				<button type="button" class="btn btn-primary" style="margin-right: 10px;">세금계산서</button>
				<select class="form-control">
					<option value="추천순">추천순</option>
					<option value="등록순">등록순</option>
				</select>
			</div>
		</form>
	</div>
	
	<div class="row" style="height: 25px;">
	
	</div>
 	<div class="col-sm-2">
 		<div class="panel panel-default" >
 		
			<div class="panel-body" style="margin-bottom: 5px; padding-bottom: 5px;">
				<span style="font-size: 23px;">메뉴이름</span>
			</div>
			<div class="panel-body" style="font-size: 14px; padding-bottom: 5px;">
				<a href="">서브메뉴이름</a>
			</div>
			<div class="panel-body" style="font-size: 14px; padding-bottom: 5px;">
				<a href="">서브메뉴이름</a>
			</div>
			<div class="panel-body" style="font-size: 14px; padding-bottom: 5px;">
				<a href="">서브메뉴이름</a>
			</div>
			<div class="panel-body" style="font-size: 14px; padding-bottom: 5px;">
				<a href="">서브메뉴이름</a>
			</div>
			<div class="panel-body" style="font-size: 14px; padding-bottom: 5px;">
				<a href="">서브메뉴이름</a>
			</div>
		</div>
 	</div>
 	<div class="col-sm-10">
 		<div class="col-sm-3" style="padding-bottom: 20px">
 		<a href="product_display.jsp" style="text-decoration: none; cursor: pointer;">
 			<div id="mall-section">
       			<div class="mall-item">
           			<img src="resources/images/펭귄 (1).jpg" style="width: 200px; height: 200px;">
           			<div>
           				<div style="margin-bottom: 10px; margin-top:10px;">
	          				<img class="img-circle" src="resources/images/profile/person.jpg" style="width: 27px; height: 27px; border: 1px solid rgb(221, 221, 221); border: radius: 100%; margin-right: 5px; display: inline-block; vertical-align: middle;">
	          				<strong>유저이름</strong>
           				</div>
           				<div class="row">
	          				<div class="title" style="padding: 0px 15px; height: 60px;">
	          					<p>판매글 정보판매글 정보판매글 정보판매글 정보판매글 정보</p>	
	          				</div>
	          				<div style="margin-top: 15px; margin-bottom: 10px;">
	          					<span style="padding-left: 15px; relative; font-size: 11px; color: rgb(79, 172, 254);">평가점수</span>
	          					<span style="background-color: rgb(213, 213, 213); color: rgb(107, 107, 107); border-radius: 3px; font-size: 12px; padding: 2px 9px; float: right;">개인</span>
	          				</div>
           				</div>
           				</a>
           			</div>
          			<div style="margin-top: 5px; padding: 7px 5px; border-top: 1px solid rgb(229, 229, 229); position: relative;">
          				<button class="btn btn-default " style="border: none;">
          					<span class="glyphicon glyphicon-heart red"></span>
          				</button>
          				<span style="float: right">
          					<span style="font-size: 18px; font-weight: bold;">99,999</span> 원
          				</span>
          			</div>
      			</div>
  			</div>
  			</a>
 		</div>
 		<div class="col-sm-3" style="padding-bottom: 20px">
 			<div id="mall-section">
       			<div class="mall-item">
           			<img src="resources/images/펭귄 (1).jpg" style="width: 200px; height: 200px;">
           			<div>
           				<div style="margin-bottom: 10px; margin-top:10px;">
	          				<img class="img-circle" src="resources/images/profile/person.jpg" style="width: 27px; height: 27px; border: 1px solid rgb(221, 221, 221); border: radius: 100%; margin-right: 5px; display: inline-block; vertical-align: middle;">
	          				<strong>유저이름</strong>
           				</div>
           				<div class="row">
	          				<div class="title" style="padding: 0px 15px; height: 60px;">
	          					<p>판매글 정보판매글 정보판매글 정보판매글 정보판매글 정보</p>	
	          				</div>
	          				<div style="margin-top: 15px; margin-bottom: 10px;">
	          					<span style="padding-left: 15px; relative; font-size: 11px; color: rgb(79, 172, 254);">평가점수</span>
	          					<span style="background-color: rgb(213, 213, 213); color: rgb(107, 107, 107); border-radius: 3px; font-size: 12px; padding: 2px 9px; float: right;">개인</span>
	          				</div>
           				</div>
           				
           			</div>
          			<div style="margin-top: 5px; padding: 7px 5px; border-top: 1px solid rgb(229, 229, 229); position: relative;">
          				<button class="btn btn-default " style="border: none;">
          					<span class="glyphicon glyphicon-heart red"></span>
          				</button>
          				<span style="float: right">
          					<span style="font-size: 18px; font-weight: bold;">99,999</span> 원
          				</span>
          			</div>
      			</div>
  			</div>
 		</div>
 		<div class="col-sm-3" style="padding-bottom: 20px">
 			<div id="mall-section">
       			<div class="mall-item">
           			<img src="resources/images/펭귄 (1).jpg" style="width: 200px; height: 200px;">
           			<div>
           				<div style="margin-bottom: 10px; margin-top:10px;">
	          				<img class="img-circle" src="resources/images/profile/person.jpg" style="width: 27px; height: 27px; border: 1px solid rgb(221, 221, 221); border: radius: 100%; margin-right: 5px; display: inline-block; vertical-align: middle;">
	          				<strong>유저이름</strong>
           				</div>
           				<div class="row">
	          				<div class="title" style="padding: 0px 15px; height: 60px;">
	          					<p>판매글 </p>	
	          				</div>
	          				<div style="margin-top: 15px; margin-bottom: 10px;">
	          					<span style="padding-left: 15px; relative; font-size: 11px; color: rgb(79, 172, 254);">평가점수</span>
	          					<span style="background-color: rgb(213, 213, 213); color: rgb(107, 107, 107); border-radius: 3px; font-size: 12px; padding: 2px 9px; float: right;">개인</span>
	          				</div>
           				</div>
           				
           			</div>
          			<div style="margin-top: 5px; padding: 7px 5px; border-top: 1px solid rgb(229, 229, 229); position: relative;">
          				<button class="btn btn-default " style="border: none;">
          					<span class="glyphicon glyphicon-heart red"></span>
          				</button>
          				<span style="float: right">
          					<span style="font-size: 18px; font-weight: bold;">99,999</span> 원
          				</span>
          			</div>
      			</div>
  			</div>
 		</div>
 		<div class="col-sm-3" style="padding-bottom: 20px">
 			<div id="mall-section">
       			<div class="mall-item">
           			<img src="resources/images/펭귄 (1).jpg" style="width: 200px; height: 200px;">
           			<div>
           				<div style="margin-bottom: 10px; margin-top:10px;">
	          				<img class="img-circle" src="resources/images/profile/person.jpg" style="width: 27px; height: 27px; border: 1px solid rgb(221, 221, 221); border: radius: 100%; margin-right: 5px; display: inline-block; vertical-align: middle;">
	          				<strong>유저이름</strong>
           				</div>
           				<div class="row">
	          				<div class="title" style="padding: 0px 15px; height: 60px;">
	          					<p>판매글 정보판매글 정보판매글 정보판매글 정보판매글 정보</p>	
	          				</div>
	          				<div style="margin-top: 15px; margin-bottom: 10px;">
	          					<span style="padding-left: 15px; relative; font-size: 11px; color: rgb(79, 172, 254);">평가점수</span>
	          					<span style="background-color: rgb(213, 213, 213); color: rgb(107, 107, 107); border-radius: 3px; font-size: 12px; padding: 2px 9px; float: right;">개인</span>
	          				</div>
           				</div>
           				
           			</div>
          			<div style="margin-top: 5px; padding: 7px 5px; border-top: 1px solid rgb(229, 229, 229); position: relative;">
          				<button class="btn btn-default " style="border: none;">
          					<span class="glyphicon glyphicon-heart red"></span>
          				</button>
          				<span style="float: right">
          					<span style="font-size: 18px; font-weight: bold;">99,999</span> 원
          				</span>
          			</div>
      			</div>
  			</div>
 		</div>
 		<div class="col-sm-3" style="padding-bottom: 20px">
 			<div id="mall-section">
       			<div class="mall-item">
           			<img src="resources/images/펭귄 (1).jpg" style="width: 200px; height: 200px;">
           			<div>
           				<div style="margin-bottom: 10px; margin-top:10px;">
	          				<img class="img-circle" src="resources/images/profile/person.jpg" style="width: 27px; height: 27px; border: 1px solid rgb(221, 221, 221); border: radius: 100%; margin-right: 5px; display: inline-block; vertical-align: middle;">
	          				<strong>유저이름</strong>
           				</div>
           				<div class="row">
	          				<div class="title" style="padding: 0px 15px; height: 60px;">
	          					<p>판매글 정보판매글 정보판매글 정보판매글 정보판매글 정보</p>	
	          				</div>
	          				<div style="margin-top: 15px; margin-bottom: 10px;">
	          					<span style="padding-left: 15px; relative; font-size: 11px; color: rgb(79, 172, 254);">평가점수</span>
	          					<span style="background-color: rgb(213, 213, 213); color: rgb(107, 107, 107); border-radius: 3px; font-size: 12px; padding: 2px 9px; float: right;">개인</span>
	          				</div>
           				</div>
           				
           			</div>
          			<div style="margin-top: 5px; padding: 7px 5px; border-top: 1px solid rgb(229, 229, 229); position: relative;">
          				<button class="btn btn-default " style="border: none;">
          					<span class="glyphicon glyphicon-heart red"></span>
          				</button>
          				<span style="float: right">
          					<span style="font-size: 18px; font-weight: bold;">99,999</span> 원
          				</span>
          			</div>
      			</div>
  			</div>
 		</div>
 		
 	
 		
 	</div>
</div>
</body>
	
	<%@ include file="../../common/footer.jsp" %>
	
</html>


