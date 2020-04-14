<%@page import="kr.pren.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%
   	User loginedUser = (User)session.getAttribute("LOGINED_USER");
   %>
    
	<div class="navbar navbar-default" style="background-color: #F2F2F2">
	<div class="container">

		<div class="navbar-header">
			<a href="../main/index.jsp" class="navbar-brand"><img src="../../resources/images/default/logo.png" style="width: 120px; height: 30px;"></a>
		</div>
		
		<ul class="nav navbar-nav navbar-right">
		<%
		
			if(loginedUser != null){
		%>
			<li><a href="../myfren/my_buy.jsp">마이프렌</a></li>
			<li><a href="../message/message_all.jsp">메세지</a></li>
			<li><a href="../buy_management/buy_management.jsp">구매</a></li>
			<li><a href=<%=loginedUser.getNo() == 41? "../management_page/member_management.jsp":"../mypage/my_info_form.jsp"  %>><%=loginedUser.getNickName() %></a></li>
			<li><a href="../mypage/logout.jsp">로그아웃</a></li>

		<%
			}
		%>
		</ul>
		<% 
			if(loginedUser == null){ 
				String path = request.getRequestURI();
		%>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="../mypage/login_form.jsp?path=<%=path%>">로그인</a></li>
			<li><a href="../mypage/register_form.jsp">회원가입</a></li>
		</ul>
		<%
			}
		%>
			
		
	</div>
</div>