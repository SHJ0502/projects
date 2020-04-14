package kr.co.jhta.contacts.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sample.model2.common.Controller;
import com.sample.model2.utils.NumberUtils;
import com.sun.xml.internal.bind.CycleRecoverable.Context;

import kr.co.jhta.contacts.service.ContactService;
import kr.co.jhta.contacts.vo.Contact;

public class DetailController implements Controller{

	private ContactService contactService = ContactService.getInstance();
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DetailController - begin");
		
		int no = NumberUtils.stringToNumber(request.getParameter("no"));
		System.out.println("DetailController - 연락처 번호["+no+"]");
		if(no <= 0) {
			System.out.println("DetailController - 유효한 연락처가 아닙니다.");
			return "redirect:/home.hta";
		}
		
		System.out.println("DetailController - 업무로직 수행 요청");
		
		Contact contact = contactService.getContactDetail(no);
		
		request.setAttribute("contact", contact);
		System.out.println("DetailController - 요청객체에 연락처 정보 저장");
		
		System.out.println("DetailController - end");
		
		return "detail.jsp";
	}
}
