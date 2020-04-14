package kr.co.jhta.simple.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/c1.hta")
public class Core1Controller extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String text = "안녕하세요";
		String html ="<button onclick='hack()'>클릭</button>";
				html += "<script>";
				html += "function hack() {";
				html += 		"alert('시스템을 다 부셔버릴꺼야')";
				html += "}";
				html += "</script>";
		
		req.setAttribute("message", text);
		req.setAttribute("content", html);
		
		req.getRequestDispatcher("/WEB-INF/views/jstl/c1.jsp").forward(req, resp);
	}
}
