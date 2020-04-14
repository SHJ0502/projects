package com.store.dao.test;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Assert;
import org.junit.Test;

import com.store.dao.BookDao;
import com.store.vo.Book;

public class BookDaoTest {

	@Test
	public void testSearchBooks() {
		
		try {
			
			int count = BookDao.getInstance().getNewBooksCount();
			Assert.assertEquals(22, count);
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("begin", 1);
			map.put("end", 10);
			
			List<Book> books = BookDao.getInstance().getNewBooks(map);
			Assert.assertEquals(10, books.size());
			map.put("begin", 21);
			map.put("end", 30);
			
			List<Book> books2 = BookDao.getInstance().getNewBooks(map);
			Assert.assertEquals(2, books2.size());
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
