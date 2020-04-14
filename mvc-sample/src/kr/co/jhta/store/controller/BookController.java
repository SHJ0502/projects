package kr.co.jhta.store.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.jhta.mvc.annotation.Controller;
import kr.co.jhta.mvc.annotation.RequestMapping;
import kr.co.jhta.mvc.servlet.ModelAndView;
import kr.co.jhta.mvc.view.JSONView;
import kr.co.jhta.store.domains.Book;
import kr.co.jhta.store.services.BookService;

@Controller
public class BookController {

	private BookService bookService = new BookService();
	
	@RequestMapping("/book/new2.html")
	public ModelAndView newBooks2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		List<Book> newBooks = bookService.newBooks();
		
		mav.addAttribute("newBooks", newBooks);
		mav.setView(new JSONView());
		
		
		return mav;
		
		
	}
	
	
	@RequestMapping("/book/new.html")
	public ModelAndView newBooks(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		List<Book> newBooks = bookService.newBooks();
		
		mav.addAttribute("newBooks", newBooks);
		
		mav.setViewName("book/new.jsp");
		
		return mav;
		
		
	}
	
	@RequestMapping("/book/detail.html")
	public ModelAndView detailBook(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		int bookNo = Integer.parseInt(request.getParameter("bookNo"));
		
		Book detailBook = bookService.getBookByNo(bookNo);
		
		mav.addAttribute("detail", detailBook);
		
		mav.setViewName("book/detail.jsp");
		
		return mav;
	}
	
	@RequestMapping("/book/search.html")
	public ModelAndView search(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("book/search.jsp");
		
		String option = request.getParameter("opt");
		String keyword = request.getParameter("keyword");

		Map<String, Object> criteria = new HashMap<String, Object>();
		if (option != null && !option.isEmpty()) {
			criteria.put("optionValue", option);
		}
		if (keyword != null && !keyword.isEmpty()) {
			criteria.put("keywordValue", keyword);
			
			if ("P".equals(option)) {
				try {
					criteria.put("keywordValue", Integer.parseInt(keyword));
				} catch (NumberFormatException e) {
					mav.addAttribute("message", "가격은 숫자만 입력하세요.");
					criteria.clear();
				}
			}
		}
		
		List<Book> books = bookService.searchBooks(criteria);
		
		mav.addAttribute("criteria", criteria);
		mav.addAttribute("books", books);
		mav.addAttribute("size", books.size());
		
		return mav;
	}
	
}
