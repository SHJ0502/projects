<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>폼으로 입력받은 값 읽어오기</h1>
	
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("userid");
		String pwd = request.getParameter("userpwd");
		String birth = request.getParameter("userbirth");
		String grade = request.getParameter("usergrade");
		String gender = request.getParameter("usergender");
		String[] techs = request.getParameterValues("usertech");
		String etc = request.getParameter("useretc");
	%>
	
	<h3>폼 입력값 확인하기</h3>
	<dl>
		<dt>아이디</dt>
		<dd><%=id %></dd>
		<dt>비밀번호</dt>
		<dd><%=pwd %></dd>
		<dt>생년월일</dt>
		<dd><%=birth %></dd>
		<dt>학력사항</dt>
		<dd><%=grade %></dd>
		<dt>성별</dt>
		<dd><%=gender %></dd>
		<dt>보유기술</dt>
		<%
			for (String tech : techs) {		
		%>
		<dd><%=tech %></dd>
		<%
			}
		%>
		<dt>추가내용</dt>
		<dd><%=etc %></dd>
	</dl>
</body>
</html>