package kr.co.jhta.simple.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.jhta.simple.vo.Score;
import kr.co.jhta.simple.vo.Student;
import kr.co.jhta.simple.vo.User;

@WebServlet(urlPatterns = "/c4.hta")
public class Core4Controller extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String[] books = {"이것이 자바다", "모던 자바 인 액션",
							"아두이노를 이용한 펌웨어 개발 실무", "모두의 데이터과학"};
		
		ArrayList<String> movies = new ArrayList<String>();
		movies.add("백두산");
		movies.add("시동");
		movies.add("신비아파트");
		movies.add("겨울왕국2");
		movies.add("캣츠");
		movies.add("포드 V 페라리");
		
		
		User[] users = {
				new User("홍길동", "hong", 1000, new Date()),
				new User("김유신", "yooshin", 100000, new Date()),
				new User("강감찬", "kangkc", 105300, new Date()),
				new User("이순신", "Leess", 123000, new Date()),
				new User("류관순", "kwansoon", 152000, new Date()),
				new User("윤봉길", "YOON", 10626700, new Date()),
				new User("안창호", "ahn", 1037900, new Date())
		};
		
		Student[] students = {
				new Student("홍길동", "서울고등학교", new Score("hong", 89, 50, 79)),
				new Student("김유신", "경기고등학교", new Score("yooshin", 68, 50, 45)),
				new Student("강감찬", "서초고등학교", new Score("kangkc", 34, 50, 79)),
				new Student("이순신", "강남고등학교", new Score("Leess", 69, 50, 79)),
				new Student("류관순", "종로고등학교", new Score("kwansoon", 89, 79, 79)),
				new Student("윤봉길", "마포고등학교", new Score("YOON", 100, 90, 96)),
				new Student("안창호", "서대문고등학교", new Score("ahn", 62, 54, 54))
		};
		
		
		req.setAttribute("books", books);
		req.setAttribute("movies", movies);
		req.setAttribute("users", users);
		req.setAttribute("students", students);
		
		
		req.getRequestDispatcher("/WEB-INF/views/jstl/c4.jsp").forward(req, resp);
	}
}
