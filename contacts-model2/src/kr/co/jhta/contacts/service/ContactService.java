package kr.co.jhta.contacts.service;

import java.sql.SQLException;
import java.util.List;

import kr.co.jhta.contacts.dao.ContactDao;
import kr.co.jhta.contacts.vo.Contact;

public class ContactService {

	private static ContactService self = new ContactService();
	private ContactService() {}
	public static ContactService getInstance() {
		return self;
	}
	
	
	private ContactDao contactDao = ContactDao.getInstance();
	
	public boolean addContact(Contact contact) throws Exception {
		System.out.println("ContactService - addContact(contact) begin");
		
		checkContactTel(contact);
		
		contactDao.insertContact(contact);
		System.out.println("ContactService - 연락처["+contact+"] 정보 저장");
		
		System.out.println("ContactService - addContact(contact) end");
		
		return true;
	}
	
	public boolean modifyContact(Contact contact) throws Exception {
		
		System.out.println("ContactService - modifyContact(contact) begin");

		boolean isNotExist = checkContactTel(contact);
		if(!isNotExist) {
			return false;
		}
		
		contactDao.updateContact(contact);
		
		System.out.println("ContactService - modifyContact(contact) end");
		
		return true;
	}
	
	
	
	public void removeContact(int no) throws Exception {
		System.out.println("ContactService - removeContact() begin");
		
		System.out.println("ContactService - removeContact() 연락처정보 삭제");
		contactDao.removeContact(no);
		
		System.out.println("ContactService - removeContact() end");
	}
	
	public List<Contact> getAllContacts() throws Exception {
		System.out.println("ContactService - getAllContacts() begin");
		
		List<Contact> contacts = contactDao.getContacts();
		System.out.println("ContactService - 등록된 연락처 개수 : " + contacts.size());
		
		System.out.println("ContactService - getAllContacts() end");
		
		return contacts;
	}
	
	public Contact getContactDetail(int no) throws Exception {
		System.out.println("ContactService - getContactDetail() begin");
		
		System.out.println("ContactService - 연락처번호["+no+"]에 해당하는 연락처 정보 조회");
		Contact contact = contactDao.getContact(no);
		System.out.println("ContactService - 연락처 정보 : " + contact);
		
		System.out.println("ContactService - getContactDetail() end");
		
		return contact;
	}
	private boolean checkContactTel(Contact contact) throws SQLException {
		Contact preContact = contactDao.getContactByTel(contact.getTel());
		if (preContact != null) {
			System.out.println("ContactService - 동일한 전화번호["+contact.getTel()+"]가 이미 존재합니다.");
			return false;
		}
			return true;
	}
}
