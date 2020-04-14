package kr.co.jhta.simple.vo;

import java.util.Date;

public class User {
	private String name;
	private String id;
	private int point;
	private Date createDate;
	
	public User() {}

	

	public User(String name, String id, int point, Date createDate) {
		super();
		this.name = name;
		this.id = id;
		this.point = point;
		this.createDate = createDate;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	
}
