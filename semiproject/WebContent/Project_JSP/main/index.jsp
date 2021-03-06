<%@page import="java.util.List"%>
<%@page import="kr.pren.dao.MainCategoryDao"%>
<%@page import="kr.pren.vo.MainCategory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>프렌</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style type="text/css">
  
  </style>
</head>
<%@ include file="../../common/nav.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getParameter("path");

	if("semiproject/Project_JSP/mypage/register_form.jsp".equals(path)){
		response.sendRedirect("../semiproject/Project_JSP/main/index.jsp");	
		return;
	}
	
		String changenickname = request.getParameter("changenickname");
		if("alert".equals(changenickname)){
	%>
		<div class="row">
			<div class="col-sm-12">
				<div class="alert alert-success">
					<strong>(재요청)</strong>닉네임이 변경되었습니다. 다시 로그인해주세요.
				</div>
			</div>
		</div>
	<% 
		}
	%>
	<%
		String successpwd = request.getParameter("successpwd");
		if("confirm".equals(successpwd)){
	%>
		<div class="row">
			<div class="col-sm-12">
				<div class="alert alert-success">
					<strong>(완료)</strong>비밀번호가 변경되었습니다.
				</div>
			</div>
		</div>
	<% 
		}
	%>
		<%
		String delete = request.getParameter("delete");
		if("id".equals(delete)){
	%>
		<div class="row">
			<div class="col-sm-12">
				<div class="alert alert-danger">
					<strong>(알림)</strong>삭제된 아이디입니다.
				</div>
			</div>
		</div>
	<% 
		}
	%>		
	
<div class="container" style="margin-bottom: 145px;">
	<h1 class="text-center" style="margin-top: 80px">프리미엄 전문가 매칭 플랫폼</h1>
	<form action="search.jsp" >
		<div id="custom-search-input" style="margin-top: 50px">
	        <div class="input-group col-sm-6 col-sm-offset-3">
	            <input type="text" class="search-query form-control" style="height: 57px" placeholder="Search" name="search"/>
	               <span class="input-group-btn">
	                   <button class="btn btn-primary" type="submit" style="height: 57px; width: 60px;">
	                       <span class=" glyphicon glyphicon-search"></span>
	                   </button>
	               </span>
	          </div>
	     </div>
     </form>
     <div style="margin-top: 80px;">
	     <div style="border: 1px solid gold; float: left; width: 20%;">
	    
			<a href="/semiproject/Project_JSP/main/category_display.jsp?maincategory=1"><img src="../../resources/images/default/main_design.jpg" width="100%" /></a>
		</div>
		<div style="border: 1px solid gold; float: left; width: 20%;">
			<a href="/semiproject/Project_JSP/main/category_display.jsp?maincategory=2"><img src="../../resources/images/default/main_marketing.jpg" width="100%" /></a>
		</div>
		<div style="border: 1px solid gold; float: left; width: 20%;">
			<a href="/semiproject/Project_JSP/main/category_display.jsp?maincategory=3"><img src="../../resources/images/default/main_it.jpg" width="100%" /></a>
		</div>
		<div style="border: 1px solid gold; float: left; width: 20%;">
			<a href="/semiproject/Project_JSP/main/category_display.jsp?maincategory=4"><img src="../../resources/images/default/main_rendering.jpg" width="100%" /></a>
		</div>
		<div style="border: 1px solid gold; float: left; width: 20%;">
			<a href="/semiproject/Project_JSP/main/category_display.jsp?maincategory=5"><img src="../../resources/images/default/main_edit.jpg" width="100%" /></a>
		</div>
	</div>
	<div>
	     <div style="border: 1px solid gold; float: left; width: 20%;">
			<a href="/semiproject/Project_JSP/main/category_display.jsp?maincategory=6"><img src="../../resources/images/default/main_document.jpg" width="100%" /></a>
		</div>
		<div style="border: 1px solid gold; float: left; width: 20%;">
			<a href="/semiproject/Project_JSP/main/category_display.jsp?maincategory=7"><img src="../../resources/images/default/main_consulting.jpg" width="100%" /></a>
		</div>
		<div style="border: 1px solid gold; float: left; width: 20%;">
			<a href="/semiproject/Project_JSP/main/category_display.jsp?maincategory=8"><img src="../../resources/images/default/main_lesson.jpg" width="100%" /></a>
		</div>
		<div style="border: 1px solid gold; float: left; width: 20%;">
			<a href="/semiproject/Project_JSP/main/category_display.jsp?maincategory=9"><img src="../../resources/images/default/main_event.jpg" width="100%" /></a>
		</div>
		<div style="border: 1px solid gold; float: left; width: 20%;">
			<a href="/semiproject/Project_JSP/main/category_display.jsp?maincategory=10"><img src="../../resources/images/default/main_ect.jpg" width="100%" /></a>
		</div>
	</div>
	
	
</div>
<%@ include file="../../common/footer.jsp" %>
</body>
</html>