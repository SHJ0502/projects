package kr.co.jhta.store.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.jhta.mvc.annotation.Controller;
import kr.co.jhta.mvc.annotation.RequestMapping;
import kr.co.jhta.mvc.servlet.ModelAndView;
import kr.co.jhta.store.domains.Book;
import kr.co.jhta.store.domains.CartItem;
import kr.co.jhta.store.domains.User;
import kr.co.jhta.store.services.BookService;
import kr.co.jhta.store.services.CartService;

@Controller
public class CartController {
	
		private CartService cartService = new CartService();
		private BookService bookService = new BookService();
		@RequestMapping("/cart/addCart.html")
		public ModelAndView addCart (HttpServletRequest request, HttpServletResponse response) throws Exception {
			
			ModelAndView mav = new ModelAndView();
				
			// 책번호, 사용자 정보 획득하기
			
			// CartItem 객체생성하고, 책번호, 사용자정보, 수량(1)을 담기
			
			// 서비스의 addCartItem(CartItem item) 실행시키기
			int bookNo = Integer.parseInt(request.getParameter("bookNo"));
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("LU");
			
			Book book = bookService.getBookByNo(bookNo);
			
			
			
			
			
			CartItem cartItem = new CartItem();
			cartItem.setBook(book);
			cartItem.setUser(user);
			cartService.addCartItem(cartItem);
			
			
			
			
			
			mav.setViewName("redirect:/cart/my.html");
			
			return mav;
		}
		
		@RequestMapping("/cart/my.html")
		public ModelAndView myCartItem(HttpServletRequest request, HttpServletResponse response) throws Exception {
			ModelAndView mav = new ModelAndView();
			
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("LU");
			
			
			// 사용자정보 획득하기
			List<CartItem> cartItems = cartService.getAllMyCartItem(user.getNo());
			// 서비스의 getAllMyCartItem(userNo) 실행 값 획득
			
			// ModelAndView에 조회된 정보 저장해서 뷰페이지로 보내기
			mav.addAttribute("cartItems", cartItems);
			
			mav.setViewName("cart/my.jsp");
			
			return mav;
			
		}
		
		@RequestMapping("/cart/deleteCart.html")
		public ModelAndView deleteCart(HttpServletRequest request, HttpServletResponse response) throws Exception {
			ModelAndView mav = new ModelAndView();
			
			int cartNo = Integer.parseInt(request.getParameter("cartNo"));
			
			cartService.deleteCartItem(cartNo);
			
			mav.setViewName("redirect:/cart/my.html");
			
			return mav;
		}
		
		@RequestMapping("/cart/allDeleteCart.html")
		public ModelAndView AllDeleteCart(HttpServletRequest request, HttpServletResponse response) throws Exception {
			ModelAndView mav = new ModelAndView();
			
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("LU");
			
			cartService.deleteAllCartItem(user.getNo());
			
			mav.setViewName("redirect:/cart/my.html");
			
			return mav;
		}
		
		public ModelAndView allBuycartItem (HttpServletRequest request, HttpServletResponse response) throws Exception {
			
			ModelAndView mav = new ModelAndView();
			
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("LU");
			
			List<CartItem> cartItems = cartService.getAllMyCartItem(user.getNo());
			
			for (CartItem cartItem : cartItems) {
				
			}
			
			
			mav.setViewName("order/my.html");
			
			return mav;
		}	
}
