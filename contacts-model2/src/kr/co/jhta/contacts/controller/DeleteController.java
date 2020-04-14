package kr.co.jhta.contacts.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sample.model2.common.Controller;
import com.sample.model2.utils.NumberUtils;

import kr.co.jhta.contacts.dao.ContactDao;
import kr.co.jhta.contacts.service.ContactService;

public class DeleteController implements Controller{

	private ContactService contactDao = ContactService.getInstance();
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DeleteController - begin");
		
		int no = NumberUtils.stringToNumber(request.getParameter("no"));
		System.out.println("DeleteController - 연락처 번호 ["+no+"]");
		if (no <= 0) {
			System.out.println("DeleteController - 유효한 연락처 번호가 아님");
			return "redirect:/home.hta";
		}
		
		System.out.println("DeleteController - 업무로직 수행요청");
		contactDao.removeContact(no);
		System.out.println("DeleteController - 연락처 정보 삭제 완료");
		
		System.out.println("DeleteController - end");
		
		return "redirect:/home.hta";
		
	}
}
