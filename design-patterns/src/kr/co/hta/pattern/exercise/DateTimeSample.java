package kr.co.hta.pattern.exercise;

import kr.co.hta.pattern.builder.DateTime;
import kr.co.hta.pattern.builder.DateTimeBuilder;

public class DateTimeSample {

	public static void main(String[] args) {
		
		DateTimeBuilder builder = DateTimeBuilder.newBuilder();
		DateTime dateTime1 = DateTimeBuilder.newBuilder()
								.year(2019).month(12).day(23).build();
		
		DateTime dateTime2 = DateTimeBuilder.newBuilder()
								.year(2019).build();
		
		DateTime dateTime3 = DateTimeBuilder.newBuilder()
								.month(12).day(25).build();
		
	}
}
