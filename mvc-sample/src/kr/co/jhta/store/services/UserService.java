package kr.co.jhta.store.services;

import org.apache.commons.codec.digest.DigestUtils;

import kr.co.jhta.store.domains.User;
import kr.co.jhta.store.repositories.UserDao;

public class UserService {

	private UserDao userDao = new UserDao();
	
	public void addNewUser(User user) throws Exception {
		
		User prevUser = userDao.getUserById(user.getId());
		if(prevUser != null) {
			throw new Exception("이미 사용중인 아이디 입니다.");
		}
		
		String shaPassword = DigestUtils.sha1Hex(user.getPassword());
		System.out.println("암호화된 비밀번호 : " + shaPassword);
		user.setPassword(shaPassword);
		
		userDao.insertUser(user);
	}

	public User login(String id, String password) throws Exception {
		User user = userDao.getUserById(id);
		if(user == null) {
			throw new Exception("아이디 혹은 비밀번호가 일치하지 않습니다.");
		}
		
		String shaPassword = DigestUtils.sha1Hex(password);
		if (!shaPassword.equals(user.getPassword())) {
			throw new Exception("아이디 혹은 비밀번호가 일치하지 않습니다.");
		}
		
		return user;
	}
	
	public User getUserByNo (int userNo) throws Exception {
		return userDao.getUserByNo(userNo);
	}
	
	public void updateUserPoint (User user) throws Exception {
		userDao.updateUser(user);
	}
}
