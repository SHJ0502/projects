<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<h1>c:out태그</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-4">
			<h3>표현식</h3>
			<p><%=(String) request.getAttribute("message") %></p>
		</div>
		<div class="col-sm-4">
			<h3>EL</h3>
			<p>${message }</p>
		</div>
		<div class="col-sm-4">
			<h3>c:out</h3>
			<p><c:out value="${message }"/></p>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-4">
			<h3>표현식</h3>
			<p><%=(String) request.getAttribute("content") %></p>
		</div>
		<div class="col-sm-4">
			<h3>EL</h3>
			<p>${content }</p>
		</div>
		<div class="col-sm-4">
			<h3>c:out</h3>
			<p><c:out value="${content }" escapeXml="false" /></p>
		</div>
	</div>
</div>
</body>
</html>
