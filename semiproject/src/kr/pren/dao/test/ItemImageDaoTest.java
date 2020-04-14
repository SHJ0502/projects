package kr.pren.dao.test;

import java.sql.SQLException;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;

import kr.pren.dao.ItemImageDao;
import kr.pren.vo.ItemImage;

public class ItemImageDaoTest {

	@Test
	public void testGetItemImageByNo () {
		try {
			// 서브이미지 등록
			List<ItemImage> beforeImageList = ItemImageDao.getInstance().getItemImageByNo(203);
			for(ItemImage i : beforeImageList) {
				
				Assert.assertEquals("영어메인2", i.getName());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
