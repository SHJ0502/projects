package dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import vo.Dept;
import vo.Emp;

public class HRDao {

	SqlMapClient sqlmap = IbatisUtil.getSqlMap();
	// 전체 부서정보 조회
	@SuppressWarnings("unchecked")
	public List<Dept> getAllDepts() throws SQLException {
		return sqlmap.queryForList("hr.getAllDepts");
	}
	
	// 지정된 부서아이디에 소속된 모든 사원 조회
	@SuppressWarnings("unchecked")
	public List<Emp> getEmployeesByDeptId(int deptId) throws SQLException {
		return sqlmap.queryForList("hr.getEmployeesByDeptId", deptId);
	}
	
	// 지정된 사원아이디에 해당하는 사원 상세정보 조회
	public Emp getEmployeeById(int empId) throws SQLException {
		return (Emp)sqlmap.queryForObject("hr.getEmployeeById", empId);
	}
	
	// 지정된 사원아이디에 해당하는 매니저 정보 조회
	public Emp getManagerById(int managerId) throws SQLException {
		return (Emp)sqlmap.queryForObject("hr.getManagerById", managerId);
	}
	
	//지정된 사원아이디에 해당하는 부하직원 조회
	@SuppressWarnings("unchecked")
	public List<Emp> getBabyById(int empId) throws SQLException {
		return sqlmap.queryForList("hr.getBabyById", empId);
	} 
}
