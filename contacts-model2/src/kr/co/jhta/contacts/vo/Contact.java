package kr.co.jhta.contacts.vo;

import java.util.Date;

public class Contact {

	private int no;
	private String name;
	private String tel;
	private String address;
	private String email;
	private String fax;
	private Date createDate;
	
	public Contact () {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Override
	public String toString() {
		return "Contact [no=" + no + ", name=" + name + ", tel=" + tel + ", address=" + address + ", email=" + email
				+ ", fax=" + fax + ", createDate=" + createDate + "]";
	}

	
	
	
}
