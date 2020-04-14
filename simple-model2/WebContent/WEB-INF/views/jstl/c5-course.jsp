<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<c:set var="position" value="course" />
<div class="container">
<div class="page-header">
		<h1>개설과정</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-3">
			<%@ include file="menu.jsp" %>
		</div>
		<div class="col-sm-9">
			<p>개설과정 컨텐츠입니다.</p>
		</div>
	</div>
</div>
</body>
</html>
