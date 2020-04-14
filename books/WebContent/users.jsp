<%@page import="kr.co.jhta.bookstore.service.BookstoreService"%>
<%@page import="kr.co.jhta.bookstore.vo.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {width: 100%;}
	table, th, td {
		border: 1px solid black;
		border-collapse: collapse;
	}
	th, td {
		padding: 7px;
		text-align: center;
	}
</style>
</head>
<body>
	<h1>사용자 조회결과</h1>
	
	<h3>사용자 목록</h3>
	
	<table>
		<thead>
			<tr>
				<th>유저번호</th>
				<th>유저아이디</th>
				<th>유저비밀번호</th>
				<th>유저이름</th>
				<th>유저포인트</th>
				<th>탈퇴여부</th>
				<th>가입날짜</th>
			</tr>
	
		</thead>
		<tbody>
			<%
			BookstoreService service = new BookstoreService();
			List<User> users = service.getAllUsers();
		
			for (User user : users) {
			%>
			<tr>
				<td><%=user.getNo() %></td>
				<td><%=user.getId() %></td>
				<td><%=user.getPassword() %></td>
				<td><%=user.getName() %></td>
				<td><%=user.getPoint() %></td>
				<td><%=user.getEnabled() %></td>
				<td><%=user.getCreateDate() %></td>
			</tr>
			
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>



