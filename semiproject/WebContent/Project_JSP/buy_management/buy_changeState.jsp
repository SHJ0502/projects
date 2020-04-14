<%@page import="java.util.Date"%>
<%@page import="kr.pren.util.DateUtils"%>
<%@page import="kr.pren.dao.UserDao"%>
<%@page import="kr.pren.vo.Order"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="kr.pren.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	int getOrderNo = Integer.parseInt(request.getParameter("getOrderNo"));
	String state = request.getParameter("value");
	Map<String,Object> map = new HashMap<>();
	map.put("state", state);
	map.put("orderNo", getOrderNo);
	
	OrderDao orderDao = OrderDao.getInstance();
	orderDao.updateOrderByNo(map);
	
	if("완료".equals(state)) {
		Order findOrder = orderDao.getOrderByOrderNo(getOrderNo);
		Date time = new Date();
	
		findOrder.setCompleateDate(time);
		UserDao userdao = UserDao.getInstance();
		userdao.updateUserProfit(findOrder);
	
	}
	
	String whereReturnPage  = request.getParameter("whereReturnPage");
	if("buyManagement".equals(whereReturnPage)) {
		response.sendRedirect("buy_management.jsp");
	} else if("buyRequestListP".equals(whereReturnPage)) {
		response.sendRedirect("../sell_management/buy_request_list.jsp");
	}
	
%>