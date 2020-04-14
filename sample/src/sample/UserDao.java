package sample;

import java.util.Arrays;
import java.util.List;

public class UserDao {

	private List<User> users = Arrays.asList(
		new User("lee", "이순신", "zxcv1234"), 
		new User("kim", "김유신", "zxcv1234"), 
		new User("kang", "강감찬", "zxcv1234"), 
		new User("ryu", "류관순", "zxcv1234") 
	);
	
	public List<User> getUsers() {
		return users;
	}
}
