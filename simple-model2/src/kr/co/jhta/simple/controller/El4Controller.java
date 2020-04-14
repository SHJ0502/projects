package kr.co.jhta.simple.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/el4.hta")
public class El4Controller extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", "title");
		map.put("searchKeyword", "아카데미 시상식");
		map.put("sort", "date");
		map.put("rows", 20);
		map.put("pageNo", 2);
		map.put("begin-page", 1);
		map.put("end-page", 10);
		
		req.setAttribute("criteria", map);
		
		req.getRequestDispatcher("/WEB-INF/views/el/el4.jsp").forward(req, resp);
	}
}
