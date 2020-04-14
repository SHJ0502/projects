package kr.co.jhta.bookstore.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.co.jhta.bookstore.vo.Book;

public class BookDao {

	public List<Book> selectAllBooks() throws Exception {
		List<Book> books = new ArrayList<Book>();
		
		String sql = "select * from bookstore_books";
		
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "zxcv1234");
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs= pstmt.executeQuery();
		
		while (rs.next()) {
			Book book = new Book();
			book.setNo(rs.getInt("book_no"));
			book.setTitle(rs.getString("book_title"));
			book.setWriter(rs.getString("book_writer"));
			book.setPrice(rs.getInt("book_price"));
			book.setDiscountPrice(rs.getInt("book_discount_price"));
			book.setSoldout(rs.getString("book_soldout"));
			book.setCreateDate(rs.getDate("book_create_date"));
			book.setStock(rs.getInt("book_stock"));
			
			books.add(book);
		}
		
		rs.close();
		pstmt.close();
		con.close();
		
		
		return books;
		
	}
	
		
}
