package kr.co.hta.pattern.builder;

public class DateTimeBuilder {

	private int year;
	private int month;
	private int day;
	
	private DateTimeBuilder() {}
	
	// 빌드객체를 제공하는 정적 메소드 제공
	public static DateTimeBuilder newBuilder() {
		return new DateTimeBuilder();
	}
	
	// 년, 월, 일을 설정할 수 있는 메소드 제공
	// 각각의 메소드는 빌드객체를 다시 반환한다.
	public DateTimeBuilder year(int year) {
		this.year =year;
		return this;
	}
	public DateTimeBuilder month(int month) {
		this.month =month;
		return this;
	}
	public DateTimeBuilder day(int day) {
		this.day =day;
		return this;
	}
	
	// 설정한 값을 가지는 DateTime객체를 제공하는 메소드
	public DateTime build() {
		DateTime dateTime = new DateTime();
		dateTime.setYear(year);
		dateTime.setMonth(month);
		dateTime.setDay(day);
		
		return dateTime;
	}
}
