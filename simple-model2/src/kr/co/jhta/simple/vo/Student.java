package kr.co.jhta.simple.vo;

public class Student {

	private String name;
	private String dept;
	private Score myScore;
	
	public Student() {}

	public Student(String name, String dept, Score myScore) {
		super();
		this.name = name;
		this.dept = dept;
		this.myScore = myScore;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public Score getMyScore() {
		return myScore;
	}

	public void setMyScore(Score myScore) {
		this.myScore = myScore;
	}
	
}
