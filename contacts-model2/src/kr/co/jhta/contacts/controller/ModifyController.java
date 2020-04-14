package kr.co.jhta.contacts.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sample.model2.common.Controller;
import com.sample.model2.utils.NumberUtils;

import kr.co.jhta.contacts.service.ContactService;
import kr.co.jhta.contacts.vo.Contact;

public class ModifyController implements Controller{

	ContactService contactService = ContactService.getInstance();
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("ModifyController - begin");
		
		System.out.println("ModifyController - 요청파라미터값 조회");
		int no = NumberUtils.stringToNumber(request.getParameter("no"));
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String fax = request.getParameter("fax");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		Contact contact = new Contact();
		contact.setNo(no);
		contact.setName(name);
		contact.setTel(tel);
		contact.setFax(fax);
		contact.setEmail(email);
		contact.setAddress(address);
		System.out.println("ModifyController - 연락처 정보  : " + contact);
		
		System.out.println("ModifyController - 업무로직 수행요청");
		boolean isSuccess = contactService.modifyContact(contact);
		System.out.println("ModifyContoller - 수정작업 완료 여부 : " + isSuccess);
		String path = "detail.hta?no=" + no;
		if(!isSuccess) {
			path = "modifyform.hta?no=" + no;
		}
		
		System.out.println("ModifyController - end");
		
		return path;
		
	}
}
