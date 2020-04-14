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
import kr.co.jhta.store.domains.Order;
import kr.co.jhta.store.domains.OrderItem;
import kr.co.jhta.store.domains.User;
import kr.co.jhta.store.services.BookService;
import kr.co.jhta.store.services.CartService;
import kr.co.jhta.store.services.OrderService;
import kr.co.jhta.store.services.UserService;

@Controller
public class OrderController {

	private CartService cartService = new CartService();
	private BookService bookService = new BookService();
	private UserService userService = new UserService();
	private OrderService orderService = new OrderService();
	
	@RequestMapping("/order/addOrder.html")
	public ModelAndView addOrder (HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		int orderNo = orderService.getOrderNo();
		System.out.println("주문번호-------------------------------" + orderNo);
		int bookNo = Integer.parseInt(request.getParameter("bookNo"));
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("LU");
		
		
		Book book = bookService.getBookByNo(bookNo);
		
		book.setStock(book.getStock() - 1);
		
		Order order = new Order();
		order.setUser(user);
		order.setNo(orderNo);
		
		OrderItem orderItem = new OrderItem();
		orderItem.setNo(orderNo);
		orderItem.setBook(book);
		
		orderService.addOrder(order);
		orderService.addOrderItem(orderItem);
		
		
		mav.setViewName("redirect:/order/my.html");
		
		
		return mav;
	}
	
	@RequestMapping("/order/my.html")
	public ModelAndView myOrderItem (HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("LU");
		
		
		List<Order> orders = orderService.getOrderItem(user.getNo());
		
		
		mav.addAttribute("orders", orders);
		mav.setViewName("order/my.jsp");
		
		System.out.println("mav-------------------------------" + mav);
		
		return mav;
	}
	
}
