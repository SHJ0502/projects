package kr.pren.dao.test;

import java.sql.SQLException;

import org.junit.Assert;
import org.junit.Test;

import kr.pren.dao.ReviewDao;

public class ReviewDaoTest {

	@Test
	public void testGetReviewCountByItemNo () {
		//리뷰 개수 조회하기
		try {
			int testCount = ReviewDao.getInstance().getReviewCountByItemNo(201);
			Assert.assertEquals(2, testCount);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
