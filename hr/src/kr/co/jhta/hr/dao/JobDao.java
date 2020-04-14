package kr.co.jhta.hr.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.co.jhta.hr.util.IbatisUtil;
import kr.co.jhta.hr.vo.Job;

public class JobDao {

	private SqlMapClient sqlmap = IbatisUtil.getSqlMap();
	
	@SuppressWarnings("unchecked")
	public List<Job> getAllJobs() throws SQLException {
		return sqlmap.queryForList("job.getAllJobs");
	}
}
