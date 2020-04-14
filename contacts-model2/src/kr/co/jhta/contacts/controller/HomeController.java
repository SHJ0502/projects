package kr.co.jhta.contacts.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sample.model2.common.Controller;

import kr.co.jhta.contacts.service.ContactService;
import kr.co.jhta.contacts.vo.Contact;

public class HomeController implements Controller{
	
	private ContactService contactService = ContactService.getInstance();
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("HomeController - begin");
		
		System.out.println("HomeController - 업무로직 실행 요청");
		List<Contact> contacts = contactService.getAllContacts();
		
		request.setAttribute("contacts", contacts);
		System.out.println("HomeController - 요청객체에 조회된 연락처 저장");
		
		System.out.println("HomeController - end");
		
		return "home.jsp";
	}
	
}
