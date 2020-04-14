package kr.co.jhta.simple.controller;
import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.jhta.simple.vo.User;

@WebServlet(urlPatterns = "/c2.hta")
public class Core2Controller extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String role ="user";
		int average = 61;
		// 아이디/비밀번호 인증된 사용자
		User user= new User("홍길동", "hong", 100000, new Date());
		
		int distance = 60000;
		int drivedYear = 3;
		
		
		req.setAttribute("role", role);
		req.setAttribute("avg", average);
		req.setAttribute("distance", distance);
		req.setAttribute("year", drivedYear);
		
		HttpSession session = req.getSession();
		session.setAttribute("LOGINED_USER", user);
		
		
		req.getRequestDispatcher("/WEB-INF/views/jstl/c2.jsp").forward(req, resp);
	}
}
