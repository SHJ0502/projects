package kr.co.jhta.simple.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.jhta.simple.vo.Score;

@WebServlet(urlPatterns = "/el2.hta")
public class El2Controller extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 자바빈즈를 속성으로 저장해서 View 페이지에 전달하기
		Score score1 = new Score("김유신", 100, 90, 80);
		Score score2 = new Score("강감찬", 67, 50, 65);
		Score score3 = new Score("이순신", 80, 70, 60);
		
		req.setAttribute("score1", score1);
		
		HttpSession session = req.getSession();
		session.setAttribute("score2", score2);
		
		ServletContext application = getServletContext();
		application.setAttribute("score3", score3);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/el/el2.jsp");
		dispatcher.forward(req, resp);
	}
}
