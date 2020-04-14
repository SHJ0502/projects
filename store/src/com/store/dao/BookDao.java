package com.store.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.store.util.IbatisUtil;
import com.store.vo.Book;

public class BookDao {

	private static BookDao instance = new BookDao();
	private BookDao() {}
	public static  BookDao getInstance() {
		return instance;
	}
	
	private SqlMapClient sqlmap = IbatisUtil.getSqlMap();
	
	@SuppressWarnings("unchecked")
	public List<Book> getNewBooks(Map<String, Object> criteria) throws SQLException {
		return sqlmap.queryForList("books.getNewBooks", criteria);
	}
	
	public int getNewBooksCount() throws SQLException {
		return (Integer) sqlmap.queryForObject("books.getNewBooksCount");
	}
	
	public Book getBookByNo(int bookNo) throws SQLException {
		return (Book) sqlmap.queryForObject("books.getBookByNo", bookNo);
	}
	
	@SuppressWarnings("unchecked")
	public List<Book> getAllBooks() throws SQLException {
		return sqlmap.queryForList("books.getAllBooks");
	}
}
