package com.store.batch;

import org.quartz.CronScheduleBuilder;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.quartz.impl.StdSchedulerFactory;

public class StoreBatch {

	public static void main(String[] args) throws Exception{
		
		// JobDetail 객체 생성하기
		// JobDetail 객체는 실행할 잡과 설정정보를 가지는 객체다.
		JobDetail jobDetail = JobBuilder
									.newJob(UserGradeUpgradeJob.class)
									.withIdentity("userGradeJob", "storegroup")
									.build();
		// Trigger 객체 생성하기
		// Trigger 객체는 Job객체의 실행주기를 정의하는 객체다.
		// Trigger 객체는 Scheduler객체에게 Job의 실행지점을 알려준다.
		Trigger trigger = TriggerBuilder
									.newTrigger()
									.withIdentity("monthlyTrigger", "storegroup")
									.withSchedule(CronScheduleBuilder
													.cronSchedule("0/20 * * * * ?"))
									.build();
		
		// Scheduler 객체는 실행할 작업을 관리하는 객체다.
		// Quartz는 실행할 작업(Job)과 실행주기(Trigger)를 분리해서 관리한다.
		// Scheduler 객체 생성시 실행할 작업과 실행주기를 지정한다.
		// 실행할 작업을 그대로 두고, 실행주기만 다른 주기로 변경하기가 용이하다.
		Scheduler scheduler = StdSchedulerFactory.getDefaultScheduler();
		scheduler.scheduleJob(jobDetail, trigger);
		
		scheduler.start();
		
	}
}
