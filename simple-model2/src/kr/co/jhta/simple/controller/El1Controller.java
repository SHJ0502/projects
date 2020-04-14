package kr.co.jhta.simple.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/el1.hta")
public class El1Controller extends HttpServlet{

		@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			// 기본자료형 및 문자열 값을 속성으로 담아서 View페이지에 전달하기
		
			req.setAttribute("username", "홍길동");
			req.setAttribute("age", 30);
			req.setAttribute("weight", 68.4);
			req.setAttribute("height", 180.2);
			req.setAttribute("address", "서울특별시 종로구 율곡로10길 105 디아망빌딩 401호");
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/el/el1.jsp");
			dispatcher.forward(req, resp);
			
		}
}
