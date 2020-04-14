<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<c:set var="languageCode" value="${not empty param.language ? param.language : 'ko' }" />
<fmt:setLocale value="${languageCode }"/>
<fmt:bundle basename="resources.messages">

<p>언어코드 : <Strong>${languageCode }</Strong></p>
<div class="container">
	<div class="row" style="margin-top: 10px; margin-bottom: 10px;">
		<div class="col-sm-12 text-right">
			<form class="form-inline" action="fmt2.hta">
				<div class="form-group">
					<select name="language" class="form-control">
						<option value="ko" ${languageCode eq 'ko' ? 'selected' : '' }>한국어</option>
						<option value="en" ${languageCode eq 'en' ? 'selected' : '' }>영어</option>
						<option value="ja" ${languageCode eq 'ja' ? 'selected' : '' }>일본어</option>
					</select>
					<button type="submit" class="btn btn-success btn-sm">변경</button>
				</div>
			</form>
		</div>
	</div>
	<div class="jumbotron">
		<h1><fmt:message key="label.home.title" /></h1>
		<p><fmt:message key="label.home.message" /></p>
		
		<div class="text-right">
			<a href="" class="btn btn-primary btn-lg"><fmt:message key="label.home.btn.login" /></a>
			<a href="" class="btn btn-primary btn-lg"><fmt:message key="label.home.btn.logout" /></a>
		</div>
	</div>
</div>
</fmt:bundle>
</body>
</html>
