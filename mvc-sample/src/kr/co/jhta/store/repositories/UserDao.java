package kr.co.jhta.store.repositories;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.co.jhta.store.domains.User;
import kr.co.jhta.store.utils.IbatisUtil;

public class UserDao {

	private SqlMapClient sqlmap = IbatisUtil.getSqlMap();
	
	
	public void insertUser(User user) throws SQLException {
		sqlmap.insert("users.insertUser", user);
	}
	
	public User getUserById (String userId) throws SQLException {
		return (User) sqlmap.queryForObject("users.getUserById", userId);
	}
	
	public User getUserByNo (int userNo) throws SQLException {
		return (User) sqlmap.queryForObject("users.getUserByNo", userNo);
	}
	
	public void updateUser (User user) throws SQLException {
		sqlmap.update("users.updateUser", user);
	}
}
