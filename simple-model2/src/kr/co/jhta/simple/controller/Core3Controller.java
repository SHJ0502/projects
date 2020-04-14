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

@WebServlet(urlPatterns = "/c3.hta")
public class Core3Controller extends HttpServlet{
		@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			String[] roles = {"guest", "user", "admin"};
			
			String userType = req.getParameter("usertype");
			int typeNo = 0;
			try {
				typeNo =Integer.parseInt(userType);
			} catch (NumberFormatException e) {}
			
			User user = new User("홍길동", "hong", 1000, new Date());
			
			
			req.setAttribute("role", roles[typeNo]);
			req.setAttribute("score", 92);
			
			HttpSession session = req.getSession();
			session.setAttribute("LOGINED_USER", user);
			
			req.getRequestDispatcher("/WEB-INF/views/jstl/c3.jsp").forward(req, resp);
			
		}

}
