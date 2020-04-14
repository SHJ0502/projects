package kr.co.jhta.store.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.jhta.mvc.annotation.Controller;
import kr.co.jhta.mvc.annotation.RequestMapping;
import kr.co.jhta.mvc.servlet.ModelAndView;
import kr.co.jhta.store.domains.User;
import kr.co.jhta.store.services.UserService;

@Controller
public class UserController {

	private UserService userService = new UserService();
	
	@RequestMapping("/user/registerform.html")
	public ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/form.jsp");
		
		return mav;
	}
	
	@RequestMapping("/user/register.html")
	public ModelAndView register(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		String id = request.getParameter("id");
		String password = request.getParameter("pwd");
		String name = request.getParameter("name");
		System.out.printf("회원가입정보 : %s, %s, %s\n", id, password, name);
		
		User user = new User();
		user.setId(id);
		user.setPassword(password);
		user.setName(name);
		
		try {
			userService.addNewUser(user);
			mav.setViewName("redirect:/user/completed.html");
		} catch (Exception e) {
			System.out.println("회원가입 오류 : " + e.getMessage());
			mav.setViewName("redirect:/user/registerform.html?fail=dup");
		}
		
		return mav;
	}
	
	@RequestMapping("/user/completed.html")
	public ModelAndView registerCompleted(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/completed.jsp");
		
		return mav;
	}
	
	@RequestMapping("/user/loginform.html")
	public ModelAndView loginform(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/loginform.jsp");
		
		return mav;
	}
	
	@RequestMapping("/user/login.html")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		String id = request.getParameter("id");
		String password = request.getParameter("pwd");
		System.out.printf("로그인 정보 : %s, %s\n", id, password);
		
		try {
			
			User user = userService.login(id, password);
			
			HttpSession session = request.getSession();
			session.setAttribute("LU", user);
			
			mav.setViewName("redirect:/book/new.html");
			
		} catch (Exception e) {
			System.out.println("로그인 오류 : " + e.getMessage());
			mav.setViewName("redirect:/user/loginform.html?fail=invalide");
		}
		
		return mav;
	}
	
	@RequestMapping("/user/logout.html")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
		}
		mav.setViewName("redirect:/home.html");
		
		return mav;
	}
}
