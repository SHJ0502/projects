package kr.co.jhta.store.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.jhta.mvc.annotation.Controller;
import kr.co.jhta.mvc.annotation.RequestMapping;
import kr.co.jhta.mvc.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("/home.html")
	public ModelAndView storeHome(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		// 뷰페이지에 전달할 데이터를 설정한다.
		mav.addAttribute("message", "홈페이지 방문을 환영합니다.");
		
		// 뷰페이지의 이름을 지정한다.
		mav.setViewName("home.jsp");
		
		return mav;
	}
}
