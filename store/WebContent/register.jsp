<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.store.dao.UserDao"%>
<%@page import="com.store.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");


	// multipart/form-data 요청 처리하기
	MultipartRequest multipartRequest
		= new MultipartRequest(request,
									"C:\\projects\\web_workspace\\store\\WebContent\\resources\\images\\profile",
									1024*1024*10,
									"utf-8");			// 여기까지 파일 업로드 완료
	
	String name = multipartRequest.getParameter("username");
	String id = multipartRequest.getParameter("userid");
	String password = multipartRequest.getParameter("userpwd");
	String filename = multipartRequest.getFilesystemName("userphotofile");
	
	//System.out.println("이름 : " + name);
	//System.out.println("아이디 : " + id);
	//System.out.println("비밀번호 : " + password);
	//System.out.println("업로드 파일명 : " + filename);
	
	User user = new User();
	user.setName(name);
	user.setId(id);
	user.setPassword(password);
	user.setImageFilename(filename);
	
	// 싱글턴방식으로 생성된 UserDao객체 획득
	UserDao userDao = UserDao.getInstance();
	
	User prevUser = userDao.getUserById(user.getId());
	if (prevUser != null) {
		response.sendRedirect("registerform.jsp?fail=dup");
		return;
		
	}
	
	userDao.insertUser(user);
	response.sendRedirect("registercompleted.jsp");
%>