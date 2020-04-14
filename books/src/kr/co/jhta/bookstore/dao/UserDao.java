package kr.co.jhta.bookstore.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.co.jhta.bookstore.vo.User;

public class UserDao {

	
	public List<User> selectAllUsers() throws Exception {
		List<User> users = new ArrayList<User>();
		
		String sql = "select * from bookstore_users";
		
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "zxcv1234");
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs= pstmt.executeQuery();
		
		while (rs.next()) {
			User user = new User();
			user.setNo(rs.getInt("user_no"));
			user.setId(rs.getString("user_id"));
			user.setPassword(rs.getString("user_password"));
			user.setName(rs.getString("user_name"));
			user.setPoint(rs.getInt("user_point"));
			user.setEnabled(rs.getString("user_enabled"));
			user.setCreateDate(rs.getDate("user_create_date"));
			
			users.add(user);
		}
		
		rs.close();
		pstmt.close();
		con.close();
		
		
		return users;
		
	}
	
}
