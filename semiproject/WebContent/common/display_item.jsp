<%@page import="java.util.List"%>
<%@page import="kr.pren.vo.SaleItem"%>
<%@page import="kr.pren.vo.Steam"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="kr.pren.dao.SteamDao"%>
<%@page import="kr.pren.dao.ReviewDao"%>
<%@page import="kr.pren.vo.Review"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="kr.pren.util.NumberUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  	<style type="text/css">
	  	
	  	span.star-prototype, span.star-prototype > * {
	  	
	    height: 21px; 
	    background: url(http://i.imgur.com/YsyS5y8.png) 0 -16px repeat-x;
	    width: 80px;
	    display: inline-block;
	   
	    
		}
	 
		span.star-prototype > * {
		
	    background-position: 0 0;
	    max-width:80px; 
	    
		}


	</style>
  <%
  request.setCharacterEncoding("UTF-8");
  
  boolean isAleadyLike = false;
  SimpleDateFormat  format = new SimpleDateFormat("yyyy-MM-dd / HH:mm");
  
  ReviewDao reviewDao = ReviewDao.getInstance();
  SteamDao steamDao = SteamDao.getInstance();
 
  double reviewScoreAvg = reviewDao.getTotalStarScoreAvg(item.getNo());
  
  int steamCount = steamDao.getSteamCountByItemNo(item.getNo());
  %>
<div class="col-sm-3 thumbnail" style="padding-bottom: 20px; width: 250px; margin: 10px 10px;">
	 			<a href="../main/product_display.jsp?productNo=<%=item.getNo() %>" style="text-decoration: none; cursor: pointer;">
	 			<div id="mall-section">
	       			<div class="mall-item">
	           			<img src="../../resources/images/item_logo/<%=item.getLogoName() !=null ? item.getLogoName() : "productImg.jpg"%>" style="width: 200px; height: 300px; width: 100%">
	           			<div>
	           				<div style="margin-bottom: 10px; margin-top:10px;">
		          				<img class="img-circle" src="../../resources/images/user_profile/<%=user.getProfileImgName() !=null ? user.getProfileImgName() : "person.png" %>" style="width: 27px; height: 27px; border: 1px solid rgb(221, 221, 221); border: radius: 100%; margin-right: 5px; display: inline-block; vertical-align: middle;">
		      				<strong><%=user.getNickName() %></strong>
	           				</div>
	           				<div class="row">
		          				<div class="title" style="padding: 0px 15px; height: 60px;">
		  		  					<p><%=item.getTitle() %></p>	
		          					<span style="background-color: rgb(213, 213, 213); color: rgb(107, 107, 107); border-radius: 3px; font-size: 12px; padding: 2px 9px; float: right;"><%=item.getIsSolo().equals("y") ? "개인" : "기업" %></span>
		          				</div>
		          				<div style="position: relative; display: inline-block; font-size: 20px; margin-bottom: 10px; letter-spacing: 5px; padding-left: 15px;">
									<div style="color: rgb(225, 225, 225);">
											<span class="star-prototype" ><%=reviewScoreAvg/2 %></span>
									</div>
								</div>
	           				</div>
	           			</div>
	          			<div style="margin-top: 5px; padding: 7px 5px; border-top: 1px solid rgb(229, 229, 229); position: relative;">
	          			<%
	          					String path = request.getRequestURI();
	          					String queryString = request.getQueryString();
	          					
	          				if(loginedUser == null) {
	          			%>
	          				<a href="../mypage/login_form.jsp?path=<%=path%>?<%=queryString%>" class="btn btn-default" style="border: none;">
	          					<span class="glyphicon glyphicon-heart"> [<%=steamCount %>]</span>
	          				</a>
	          			<%
	          				} else {
	          					
	          					if (item.getCnt() == 0) {
	          			%>
	          						
	          						<a href="../myfren/steam.jsp?path=<%=path%>?<%=queryString%>&productNo=<%=item.getNo() %>&userNo=<%=loginedUser.getNo() %>" class="btn btn-default" style="border: none;">
	          							<span class="glyphicon glyphicon-heart"> [<%=steamCount %>]</span>
	          						</a>
	          			<%
	          			
	          					} else {
	          			%>
	          						<a href="../myfren/steam_delete.jsp?path=<%=path%>?<%=queryString%>&productNo=<%=item.getNo() %>&userNo=<%=loginedUser.getNo() %>" class="btn btn-default" style="border: none;">
	          							<span class="glyphicon glyphicon-heart red"> [<%=steamCount %>]</span>
	          						</a>
	          			<%
	          					}
	          				}
	          			%>
	          				<span style="float: right">
	          					<span style="font-size: 18px; font-weight: bold;"><%=NumberUtils.numberWithComma(item.getPrice()) %></span> 원
	          				</span>
	          			</div>
	          			<div style="float: right; display: inline-block;">
	          				<span style="float: right; font-size: 11px;"><%=format.format(item.getUploadDate()) %></span>
	          			</div>
	      			</div>
	  			</div>
	  			</a>
	  			
	 		</div>


	