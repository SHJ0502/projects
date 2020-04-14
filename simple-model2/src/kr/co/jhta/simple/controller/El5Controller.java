package kr.co.jhta.simple.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.jhta.simple.vo.Score;
import kr.co.jhta.simple.vo.Student;

@WebServlet(urlPatterns = "/el5.hta")
public class El5Controller extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Score score = new Score("김유신", 70, 60, 80);
		Student student = new Student("김유신", "인문계열", score);
		
		req.setAttribute("student", student);

		req.getRequestDispatcher("/WEB-INF/views/el/el5.jsp").forward(req, resp);
	}
}
