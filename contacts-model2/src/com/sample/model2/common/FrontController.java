package com.sample.model2.common;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.jhta.contacts.controller.AddController;
import kr.co.jhta.contacts.controller.DeleteController;
import kr.co.jhta.contacts.controller.DetailController;
import kr.co.jhta.contacts.controller.FormController;
import kr.co.jhta.contacts.controller.HomeController;
import kr.co.jhta.contacts.controller.ModifyController;
import kr.co.jhta.contacts.controller.ModifyFormController;

public class FrontController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			System.out.println("FrontController - begin.");
			
			//인코딩 방식 지정
			ServletConfig config = this.getServletConfig();
			String encodingType = config.getInitParameter("encoding");
			System.out.println("FrontController - 인코딩타입 : " + encodingType);
			if (encodingType == null) {
				encodingType = "UTF-8";
			}
			request.setCharacterEncoding(encodingType);
			
			// 요청 URL분석
			String requestURI = request.getRequestURI();
			System.out.println("FrontController - 요청URI : " + requestURI);
			
			//요청을 처리할 컨트롤러 생성
			Controller controller = null;
			if("/home.hta".equals(requestURI)) {
				controller = new HomeController();
			} else if ("/form.hta".equals(requestURI)) {
				controller = new FormController();
			} else if ("/add.hta".equals(requestURI)) {
				controller = new AddController();
			} else if ("/detail.hta".equals(requestURI)) {
				controller = new DetailController();
			} else if ("/delete.hta".equals(requestURI)) {
				controller = new DeleteController();
			} else if ("/modifyform.hta".equals(requestURI)) {
				controller = new FormController();
			} else if ("/modify.hta".equals(requestURI)) {
				controller = new ModifyController();
			} else {
				controller = new HomeController();
			}
			System.out.println("FrontController - " + controller.getClass().getSimpleName() + "생성됨");
			
			// 컨트롤러 실행하고, 이동할 경로를 반환값으로 받음
			System.out.println("FrontController - " + controller.getClass().getSimpleName() + "의 execute()메소드 실행함");
			String path = controller.execute(request, response);
			System.out.println("FrontController - 이동할 경로 : " + path);
			
			if (path.startsWith("redirect")) {
				// 재요청 URL을 응답으로 보낸다.
				path = path.replace("redirect:", "");
				response.sendRedirect(path);
				System.out.println("FrontController - 재요청 url[" + path + "[ 을 응답으로 보냄");
				
			} else {
				// 내부이동
				path = "/WEB-INF/views/" + path;
				request.getRequestDispatcher(path).forward(request, response);
				System.out.println("FrontController - [" + path + "]로 내부이동함");
			}
			
			System.out.println("FrontController - end.\n");
		} catch (Exception e) {
			throw new ServletException(e);
		}
		
	}
}
