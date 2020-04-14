package kr.co.jhta.contacts.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.co.jhta.contacts.ibatis.IbatisUtils;
import kr.co.jhta.contacts.vo.Contact;

public class ContactDao {

	private static ContactDao self = new ContactDao();
	
	private ContactDao() {}
	
	public static ContactDao getInstance() {
		return self;
	}
	private SqlMapClient sqlmap = IbatisUtils.getSqlmap();
	
	@SuppressWarnings("unchecked")
	public List<Contact> getContacts() throws SQLException {
		return sqlmap.queryForList("contacts.getContacts");
	}
	
	public void insertContact(Contact contact) throws SQLException {
		sqlmap.insert("contacts.insertContact", contact);
	}
	
	public Contact getContactByTel(String tel) throws SQLException {
		return (Contact)sqlmap.queryForObject("contacts.getContactByTel", tel);
	}
	
	public Contact getContact(int no) throws SQLException {
		return (Contact)sqlmap.queryForObject("contacts.getContact", no);
	}
	
	public void removeContact(int no) throws SQLException {
		sqlmap.delete("contacts.deleteContact", no);
	}
	public void updateContact(Contact contact) throws SQLException {
		sqlmap.update("contacts.updateContact", contact);
	}
}
