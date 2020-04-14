package com.sample.model2.utils;

public class NumberUtils {

	private NumberUtils() {}
	
	/**
	 * 문자열을 정수로 변환한다.
	 * @param text 숫자로 구성된 문자열
	 * @return 정수, 문자열이 숫자로 구성되어 있지 않은 경우 0을 반환한다.
	 */
	public static int stringToNumber(String text) {
		return NumberUtils.stringToNumber(text, 0);
	}
	
	/**
	 * 문자열을 정수로 변환한다. 기본값을 지정할 수 있다.
	 * @param text 숫자로 구성된 문자열
	 * @param defaultValue 변환실패시 사용할 기본값
	 * @return 정수, 문자열이 숫자로 구성되어 있지 않은 경우 defaultValue 값을 반환한다.
	 */
	public static int stringToNumber(String text, int defaultValue) {
		if(text == null) {
			return defaultValue;
		}
		
		try {
			return Integer.parseInt(text);
		} catch (Exception e) {
			return defaultValue;
		}
	}
}
