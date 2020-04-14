<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="/home.html">북스토어</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="${menu eq 'home' ? 'active' : '' }"><a href="/home.html">홈</a></li>
			<li class="${menu eq 'new' ? 'active' : '' }"><a href="/book/new.html">새책</a></li>
			<li class="${menu eq 'search' ? 'active' : '' }"><a href="/book/search.html">검색하기</a></li>
		</ul>
		<c:if test="${not empty LU }">
			<ul class="nav navbar-nav">
				<li class="${menu eq 'cart' ? 'active' : '' }"><a href="/cart/my.html">내 장바구니</a></li>
				<li class="${menu eq 'order' ? 'active' : '' }"><a href="/order/my.html">주문내역</a></li>
				<li class="${menu eq 'review' ? 'active' : '' }"><a href="/review/my.html">내가 작성한 리뷰</a></li>
			</ul>
		</c:if>
		<ul class="nav navbar-nav navbar-right">
		<c:choose>
			<c:when test="${empty LU }">
				<li class="${menu eq 'login' ? 'active' : '' }"><a href="/user/loginform.html">로그인</a></li>
				<li class="${menu eq 'register' ? 'active' : '' }"><a href="/user/registerform.html">회원가입</a></li>
			</c:when>
			<c:otherwise>
				<li class="${menu eq 'logout' ? 'active' : '' }"><a href="/user/logout.html">로그아웃</a></li>
			</c:otherwise>
		</c:choose>
		</ul>
	</div>
</div>