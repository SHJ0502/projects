package com.store.dao.test;

public class Sample {

	public int plus(int x, int y) {
		int value = x + y;
		return value;
	}
	
	public int minus(int x, int y) {
		int result = x - y;
		return result;
	}
	
	public int multiple(int x, int y) {
		int result = x*y;
		return result;
	}
	
	public int divide(int x, int y) {
		if (y == 0) {
			new RuntimeException("0으로 나눌 수 없습니다.");
		}
		int result = x/y;
		return result;
	}
}
