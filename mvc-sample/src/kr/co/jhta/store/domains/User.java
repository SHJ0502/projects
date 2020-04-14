package kr.co.jhta.store.domains;

import java.util.Date;

public class User {

	private int no;
	private String id;
	private String password;
	private String name;
	private int point;
	private String enabled;
	private String imageFilename;
	private String grade;
	private Date createDate;
	

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getEnabled() {
		return enabled;
	}

	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}

	public String getImageFilename() {
		return imageFilename;
	}

	public void setImageFilename(String imageFilename) {
		this.imageFilename = imageFilename;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Override
	public String toString() {
		return "User [no=" + no + ", id=" + id + ", password=" + password + ", name=" + name + ", point=" + point
				+ ", enabled=" + enabled + ", imageFilename=" + imageFilename + ", grade=" + grade + ", createDate="
				+ createDate + "]";
	}
	
	
}
