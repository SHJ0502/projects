package com.store.batch;

import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.StringJoiner;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.store.dao.BookDao;
import com.store.dao.CartDao;
import com.store.util.DateUtils;
import com.store.vo.Book;

public class SaveDailyBookJob implements Job{
	
	//private static Logger logger = LoggerFactory.getLogger(DeleteCartItemsJob.class);
	private CartDao cartDao = CartDao.getInstance();
	private BookDao bookDao = BookDao.getInstance();
	private String saveDirectory = "c:/backup";
	
	public void execute(JobExecutionContext context) throws JobExecutionException {
		
		try {
			List<Book> books = bookDao.getAllBooks();
			
			String filename = "book_" + DateUtils.dateToString(new Date()) + ".txt";
			
			PrintWriter writer = new PrintWriter(saveDirectory + "/" + filename);
			StringJoiner joiner = new StringJoiner("^");
			for (Book book : books) {
				joiner.add(String.valueOf(book.getNo()));
				joiner.add(book.getTitle());
				joiner.add(String.valueOf(book.getPrice()));
				joiner.add(String.valueOf(book.getStock()));
				joiner.add(book.getSoldout());
				
				String textline = joiner.toString();
				writer.println(textline);
		}
			
			writer.close();
		
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
	}

	
	
	/*
	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException {
		
		cartDao.deleteCartItemByBatch();
		logger.info("7일 경과된 카트 아이템을 일괄 삭제함");
	}
	*/
}
