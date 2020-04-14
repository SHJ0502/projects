package com.store.dao.test;

import org.junit.Assert;
import org.junit.Ignore;
import org.junit.Test;

public class SampleTest {

	// 테스트 케이스 구현
	// 덧셈기능을 테스트하는 테스트케이스 메소드
	// 테스트케이스 메소드
	// 		접근제한자 	: public
	//		반환값		: void
	//		메소드명	: testXXX
	//		매개변수	: 필요없다.
	//		어노테이션 	: @Test 추가
	
	@Test
	public void testPlus() {
		Sample sample = new Sample();
		
		int result = sample.plus(10, 20);
		Assert.assertEquals(30, result);
		
		int result2 = sample.plus(60, -10);
		Assert.assertEquals(50, result2);
		
	}
	
	@Test
	@Ignore
	public void testDivide() {
		Sample sample = new Sample();
		int result = sample.divide(60, 5);
		
		Assert.assertEquals(12, result);
	}
	
	@Test(expected = RuntimeException.class)
	public void testDivideForZero() {
		Sample sample = new Sample();
		sample.divide(60, 0);
	}
}
