package kr.co.jhta.simple.vo;

public class Score {
	private String name;
	private int kor;
	private int eng;
	private int math;
	
	public Score () {}

	public Score(String name, int kor, int eng, int math) {
		super();
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}

	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		this.eng = eng;
	}

	public int getMath() {
		return math;
	}

	public void setMath(int math) {
		this.math = math;
	}
	public int getTotal() {
		return kor + eng + math;
	}
	public int getAvg() {
		return (kor + eng + math)/3;
	}
	public double getAvgDetail() {
		return (kor + eng + math)/3.0;
	}
	public boolean isPassed() {
		if (kor < 40) {
			return false;
		}
		if (eng < 40) {
			return false;
		}
		if (math < 40) {
			return false;
		}
		if (getAvg() < 60) {
			return false;
		}
		return true;
	}
	
	
	
}
