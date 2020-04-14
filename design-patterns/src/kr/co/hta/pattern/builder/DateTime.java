package kr.co.hta.pattern.builder;

import java.util.Date;

public class DateTime {

	private int year;
	private int month;
	private int day;
	
	// 패키지 바깥에서 객체 생성하지 못하게 함
	// 패키지내의 클래스만 사용가능
	DateTime() {}

	// 패키지내의 클래스만 사용가능
	public int getYear() {
		return year;
	}

	void setYear(int year) {
		this.year = year;
	}

	// 패키지내의 클래스만 사용가능
	public int getMonth() {
		return month;
	}

	void setMonth(int month) {
		this.month = month;
	}

	public int getDay() {
		return day;
	}

	void setDay(int day) {
		this.day = day;
	}
	
	
}
