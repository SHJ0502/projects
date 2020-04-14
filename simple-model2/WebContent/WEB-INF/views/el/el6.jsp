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
		<h1>EL 내장객체 연습</h1>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<ul>
				<li><a href="el6.hta?no=10&cate=news&pageno=1">링크</a></li>
				<li><a href="el6.hta?no=20&cate=sports&pageno=2">링크</a></li>
				<li><a href="el6.hta?no=30&cate=movies&pageno=3">링크</a></li>
				<li><a href="el6.hta?no=40&cate=ents&pageno=4">링크</a></li>
			</ul>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-4">
			<h3>요청파라미터 표현</h3>
			<dl>
				<dt>번호</dt><dd>${param.no }</dd>
				<dt>카테고리</dt><dd>${param.cate }</dd>
				<dt>페이지번호</dt><dd>${param.pageno }</dd>
			</dl>
		</div>
		<div class="col-sm-4">
			<h3>초기화파라미터 표현</h3>
			<dl>
				<dt>설정파일경로</dt><dd>${initParam.configLocation }</dd>
				<dt>관리자이메일</dt><dd>${initParam['admin-email'] }</dd>
			</dl>
		</div>
		<div class="col-sm-4">
			<h3>요청헤더 정보 표현</h3>
			<dl>
				<dt>인코딩</dt><dd>${header["accept-encoding"] }</dd>
				<dt>언어</dt><dd>${header["accept-language"] }</dd>
				<dt>브라우저</dt><dd>${header["user-agent"] }</dd>
				<dt>지원가능타입</dt><dd>${header["accept"] }</dd>
			</dl>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-4">
			<h3>쿠키정보 표현</h3>
			<dl>
				<dt>세션아이디</dt><dd>${cookie.JSESSIONID.value }</dd>
				<dt></dt><dd></dd>
			</dl>
		</div>
		<div class="col-sm-4">
			<h3>내장객체의 정보 조회</h3>
			<dl>
				<dt>요청방식</dt><dd>${pageContext.request.method }</dd>
				<dt>요청URI</dt><dd>${pageContext.request.requestURI }</dd>
				<dt>쿼리스트링</dt><dd>${pageContext.request.queryString }</dd>
				<dt>클라이언트 ip주소</dt><dd>${pageContext.request.remoteAddr }</dd>
			</dl>
		</div>
		<div class="col-sm-4">
			<h3>내장객체의 정보 조회</h3>
			<dl>
				<dt>세션아이디</dt><dd>${pageContext.session.id }</dd>
				<dt>세션 생성 시간</dt><dd>${pageContext.session.creationTime }</dd>
				<dt>마지막 엑세스 시간</dt><dd>${pageContext.session.lastAccessedTime }</dd>
				<dt>최대 타임아웃 시간</dt><dd>${pageContext.session.maxInactiveInterval }</dd>
			</dl>
		</div>
	</div>
</div>
</body>
</html>
