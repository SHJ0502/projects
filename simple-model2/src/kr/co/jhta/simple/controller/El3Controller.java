package kr.co.jhta.simple.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.jhta.simple.vo.Score;

@WebServlet(urlPatterns = "/el3.hta")
public class El3Controller extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Score[] scores = {
			new Score("김유신", 20, 30, 40),
			new Score("강감찬", 30, 80, 80),
			new Score("이순신", 60, 70, 80),
		};
		
		List<String> subjects = new ArrayList<String>();
		subjects.add("프로그래밍 기초");
		subjects.add("프로그래밍 응용");
		subjects.add("UI 설계 및 구현");
		subjects.add("서버 프로그래밍 구현");
		subjects.add("테스트 및 배포");
		
		req.setAttribute("scores", scores);
		req.setAttribute("subjects", subjects);
		
		req.getRequestDispatcher("/WEB-INF/views/el/el3.jsp").forward(req, resp);
	}
}
