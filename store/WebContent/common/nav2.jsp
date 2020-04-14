<%@page import="com.store.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션객체에서 LOGINED_USER로 저장된 User객체를 조회
	User loginedUser = (User) session.getAttribute("LOGINED_USER");
%>
    <!-- 네비게이션 -->
<div class="navbar navbar-default">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="index.jsp">프랜</a>
		</div>
		<ul class="nav navbar-nav">
		<%
			if(loginedUser != null) {
		%>
			<li><a href="cart.jsp">장바구니</a></li>
			<li>
				<a href="#"> 마이메뉴
					<span class="caret"></span>
				</a>
				<ul >
					<li><a href="">마이프랜</a></li>
					<li><a href="">메시지</a></li>
					<li><a href="">구매</a></li>
					<li><a href="">아이디</a></li>
					<li><a href="">로그아웃</a></li>
				</ul>
			</li>
		<%
			}
		%>
		</ul>
		<%
			if (loginedUser == null) {
		%>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="registerform.jsp">회원가입</a></li>
			<li><a href="loginform.jsp">로그인</a></li>
		</ul>
		<%
			} else {
		%>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="logout.jsp">로그아웃</a></li>
		</ul>
		<p class="navbar-text navbar-right">
			<img class="img-circle" width="22" height="22" src="resources/images/profile/<%=loginedUser.getImageFilename() !=null ? loginedUser.getImageFilename() : "person.jpg" %>" alt="loginedUser.getName() 님의 사진">
			<strong><%=loginedUser.getName() %></strong>님 환영합니다.
		</p>
		<%
			}
		%>
	</div>
</div>