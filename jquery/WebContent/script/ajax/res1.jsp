<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	Map<String, String> map = new HashMap<String, String>();
	map.put("kor", "김치,된장찌개,청국장,두부,삼겹살,부대찌개,칼국수,설렁탕");
	map.put("jap", "스시,사시미,스카다시,야키모노,스이모노,스노모노,소바,우동,덴푸라");
	map.put("usa", "Cajun,Jambalaya,Gumbo,Creole,Corn Soup,Clam Chowder,Hotdog");
	map.put("ita", "Pizza,Pasta,Risotto,Bruschetta,foccacia,Ciabatta,Insalata Caprese");
	map.put("fra", "Foie Gras,Magret de Canard,Jambon,Andouillette,Rillettes de porc");
	
	String code = request.getParameter("code");
	System.out.println("국가코드: " + code);
	
	String data = map.get(code);
	
	out.println(data);
%>