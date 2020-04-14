package kr.co.jhta.simple.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.jhta.simple.model.HomeService;


@WebServlet(urlPatterns = "/home.hta")	// home.hta 라는 URL요청이 오면 HomeController가 실행됨.
// 클라이언트의 요청 처리 
// Model이 반환하는 데이터를 View에 전달
// View 페이지로 이동
public class HomeController  extends HttpServlet {

	private HomeService service = new HomeService();
	
	// 서비스가 실행됨.
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		// 모델을 실행해서 데이터 획득
		// getSiteName에서 가져온 문자열 반환값을 name에 담음
		String name = service.getSiteName();
		
		// 데이터를 View에 전달
		req.setAttribute("siteName", name);
		
		// View페이지로 이동하기
		req.getRequestDispatcher("/WEB-INF/views/home.jsp").forward(req, resp);
		
	}
}
