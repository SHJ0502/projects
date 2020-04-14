package kr.co.jhta.hr.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.co.jhta.hr.util.IbatisUtil;
import kr.co.jhta.hr.vo.Employee;

public class EmployeeDao {

	private SqlMapClient sqlmap = IbatisUtil.getSqlMap();
	
	// 전체 사원 정보 조회
	@SuppressWarnings("unchecked")
	public List<Employee> getAllEmployees() throws SQLException {
		return sqlmap.queryForList("emp.getAllEmployees");
	}
	
	// 지정된 부서에 소속된 사원정보 조회
	@SuppressWarnings("unchecked")
	public List<Employee> getEmployeeByDepartmentId(int deptId) throws SQLException {
		return sqlmap.queryForList("emp.getEmployeeByDepartmentId", deptId);
	}
	
	// 지정된 사원번호에 해당하는 사원정보 조회
	public Employee getEmployeeById(int employeeId) throws SQLException {
		return (Employee) sqlmap.queryForObject("emp.getEmployeeById", employeeId);
	}
	
	// 사원정보 등록
	public void insertEmployee(Employee employee) throws SQLException {
		sqlmap.insert("emp.insertEmployee", employee);
	}
	public int getAllDepartmentsCount (int departmentId) throws SQLException {
		return (int) sqlmap.queryForObject("emp.getAllDepartmentsCount", departmentId);
	}
	
}
