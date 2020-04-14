package kr.co.jhta.simple.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.jhta.simple.vo.Score;
import kr.co.jhta.simple.vo.User;

@WebServlet(urlPatterns = "/fmt1.hta")
public class Fmt1Controller extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		User[] users = {
				new User("홍길동", "hong", 1000, new Date()),
				new User("김유신", "yooshin", 100000, new Date()),
				new User("강감찬", "kangkc", 105300, new Date()),
				new User("이순신", "Leess", 123000, new Date()),
				new User("류관순", "kwansoon", 152000, new Date()),
				new User("윤봉길", "YOON", 10626700, new Date()),
				new User("안창호", "ahn", 1037900, new Date())
		};
		
		Score[] scores = {
			new Score("홍길동", 46, 26, 45),	
			new Score("김유신", 79, 26, 37),	
			new Score("강감찬", 78, 78, 68),	
			new Score("이순신", 78, 25, 99),	
			new Score("류관순", 27, 95, 47),	
			new Score("윤봉길", 78, 45, 78)	
		};
		
		req.setAttribute("users", users);
		req.setAttribute("scores", scores);
		
		
		req.getRequestDispatcher("/WEB-INF/views/jstl/fmt1.jsp").forward(req, resp);
	}
}
