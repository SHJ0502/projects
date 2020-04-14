package kr.co.jhta.contacts.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sample.model2.common.Controller;
import com.sample.model2.utils.NumberUtils;

import kr.co.jhta.contacts.service.ContactService;
import kr.co.jhta.contacts.vo.Contact;

public class FormController implements Controller{

	private ContactService contactService = ContactService.getInstance();
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("FormController - begin");
		
		int no = NumberUtils.stringToNumber(request.getParameter("no"));
		System.out.println("FormController - 조회된 연락처["+no+"]");
		if(no > 0) {
			System.out.println("FormController - 연락처 수정 작업");
			Contact contact = contactService.getContactDetail(no);
			System.out.println("FormController - 조회된 연락처 정보 : " + contact);
			
			request.setAttribute("contact", contact);
			System.out.println("FormController - 요청객체에 연락처 정보 저장");
		}
		
		System.out.println("FormController - end");
		
		return "form.jsp";
		
	}
}
