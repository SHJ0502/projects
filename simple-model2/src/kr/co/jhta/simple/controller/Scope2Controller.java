package kr.co.jhta.simple.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Scope2Controller extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// <init-param/>으로 설정된 초기화 파라미터값을 가지고 있는 객체
		ServletConfig config = getServletConfig();
		// <context-param/>으로 설정된 초기화 파라미터값을 가지고 있는 객체
		ServletContext application = getServletContext();
				
		String dir = config.getInitParameter("saveDirectory");	// 값을  조회하지 못함
		String size = config.getInitParameter("maxUploadSize");	// 값을  조회하지 못함
		String role = config.getInitParameter("role");			
				
		String loc = application.getInitParameter("configLocation");
		String email = application.getInitParameter("admin-email");
		
		
		req.setAttribute("directory", dir);
		req.setAttribute("maxSize", size);
		req.setAttribute("userRole", role);
		req.setAttribute("location", loc);
		req.setAttribute("emailAddr", email);
		
		
		
		// forward 이동
		req.getRequestDispatcher("/WEB-INF/views/scope/scope1.jsp").forward(req, resp);
	}
}
