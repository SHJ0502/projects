package kr.co.jhta.contacts.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sample.model2.common.Controller;

import kr.co.jhta.contacts.service.ContactService;
import kr.co.jhta.contacts.vo.Contact;

public class AddController implements Controller {

	private ContactService contactService = ContactService.getInstance();
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
			System.out.println("AddController - begin");

			
			System.out.println("AddController - 요청파라미터 값 조회");
			String name = request.getParameter("name");
			String tel = request.getParameter("tel");
			String fax = request.getParameter("fax");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			System.out.printf("AddController - %s, %s, %s, %s, %s\n", name, tel, fax, email, address);
			
			Contact contact = new Contact();
			contact.setName(name);
			contact.setTel(tel);
			contact.setFax(fax);
			contact.setEmail(email);
			contact.setAddress(address);

			System.out.println("AddController - 업무로직 실행 요청");
			boolean isSuccess = contactService.addContact(contact);
			System.out.println("AddController - 전화번호 등록 성공여부 : " + isSuccess);
			
			String path = "redirect:/home.hta";
			if(!isSuccess) {
				path = "redirect:/form.hta?fail=dup";
			}
			
			System.out.println("AddController - end");
			
			return path;
		
	}
}
