package com.store.batch;

import java.sql.SQLException;
import java.util.List;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import com.store.dao.UserDao;
import com.store.vo.User;

// 고객의 등급을 포인트를 기준으로 업그레이드 하는 Job
// 매달 1일에 수행되는 잡이다.
public class UserGradeUpgradeJob implements Job{

	@Override
	public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {

		try {
			System.out.println("UserGradeUpgradeJob - 고객등급 조정 배치작업 시작");
			List<User> users = UserDao.getInstance().getAllUsers();
			
			for (User user : users) {
				System.out.println("UserGradeUpgradeJob - 고객번호[" + user.getNo() + "] 등급조정");
				UserDao.getInstance().updateUserGrade(user.getNo());
			}
			
			System.out.println("UserGradeUpgradeJob - 고객등급 조정 배치작업 종료");
			
			
		} catch (SQLException e) {
			
			throw new JobExecutionException(e);
			
		}
	}
}
