package kr.co.jhta.store.services;

import java.util.List;
import java.util.Map;

import kr.co.jhta.store.domains.Book;
import kr.co.jhta.store.repositories.BookDao;

public class BookService {

	private BookDao bookDao = new BookDao();
	
	public List<Book> newBooks() throws Exception {
		
		List<Book> books = bookDao.getNewBooks();
		
		return books;
	}
	
	public List<Book> searchBooks(Map<String, Object> criteria) throws Exception {
		
		
		return bookDao.searchBooks(criteria);
		
	}
	
	public Book getBookByNo (int bookNo) throws Exception {
		return bookDao.getBookByNo(bookNo);
	}
	
	public void updateBook (Book book) throws Exception {
		bookDao.updateBook(book);
	}
}
