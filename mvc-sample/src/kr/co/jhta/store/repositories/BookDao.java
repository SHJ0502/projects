package kr.co.jhta.store.repositories;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.co.jhta.store.domains.Book;
import kr.co.jhta.store.utils.IbatisUtil;

public class BookDao {
	private SqlMapClient sqlmap = IbatisUtil.getSqlMap();
	
	public void insertBook (Book book) throws SQLException {
		sqlmap.insert("books.insertBook", book);
	}
	
	@SuppressWarnings("unchecked")
	public List<Book> getNewBooks () throws SQLException {
		return sqlmap.queryForList("books.getNewBooks");
	}
	
	@SuppressWarnings("unchecked")
	public List<Book> searchBooks(Map<String, Object> criteria) throws SQLException {
		return sqlmap.queryForList("books.searchBooks", criteria);
	}
	
	public Book getBookByNo (int bookNo) throws SQLException {
		return (Book) sqlmap.queryForObject("books.getBookByNo", bookNo);
	}
	
	public void updateBook (Book book) throws SQLException {
		sqlmap.update("books.updateBook", book);
	}
}
