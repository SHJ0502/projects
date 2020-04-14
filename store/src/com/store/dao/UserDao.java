package com.store.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.store.util.IbatisUtil;
import com.store.vo.User;

public class UserDao {
	
	private static UserDao self = new UserDao();	// 자기 자신의 객체를 담는 정적변수에 객체를 저장한다.
	private UserDao() {} 							// (싱글턴객체 만들기) 생성자를 private으로 선언
	public static UserDao getInstance() {			// UserDao객체를 제공하는 정적메소드를 정의
		return self;
	}
	
	private SqlMapClient sqlmap = IbatisUtil.getSqlMap();
	
	@SuppressWarnings("unchecked")
	public List<User> getAllUsers() throws SQLException {
		return sqlmap.queryForList("users.getAllUsers");
	}
	
	public void updateUserGrade(int no) throws SQLException {
		sqlmap.update("users.updateUserGrade", no);
	}
	
	
	public void insertUser(User user) throws SQLException {
		sqlmap.insert("users.insertUser", user);
	}
	
	
	public User getUserById(String userId) throws SQLException {
		return (User) sqlmap.queryForObject("users.getUserById", userId);
	}
}
