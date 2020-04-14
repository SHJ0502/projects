package kr.co.jhta.bookstore.service;

import java.util.List;

import kr.co.jhta.bookstore.dao.BookDao;
import kr.co.jhta.bookstore.dao.UserDao;
import kr.co.jhta.bookstore.vo.Book;
import kr.co.jhta.bookstore.vo.User;

public class BookstoreService {
	
	private BookDao bookDao = new BookDao();
	private UserDao userDao = new UserDao();
	
	public List<Book> getAllBooks() throws Exception {
		return bookDao.selectAllBooks();
	}
	public List<User> getAllUsers() throws Exception {
		return userDao.selectAllUsers();
	}
}
