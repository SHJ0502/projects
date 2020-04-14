package kr.co.jhta.hr.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.co.jhta.hr.util.IbatisUtil;
import kr.co.jhta.hr.vo.Department;

public class DepartmentDao {

	private SqlMapClient sqlmap = IbatisUtil.getSqlMap();
	
	// 전체 부서 정보 조회
	@SuppressWarnings("unchecked")
	public List<Department> getAllDepartmentsWithManager() throws SQLException {
		return sqlmap.queryForList("dept.getAllDepartmentsWithManager");
	}
	
	public void insertDepartment(Department department) throws SQLException {
		sqlmap.insert("dept.insertDepartment", department);
	}
	
	public Department getDepartmentById (int departmentId) throws SQLException {
		return (Department) sqlmap.queryForObject("dept.getDepartmentById", departmentId);
	}
	
	// 삭제하기
	
	public void deleteDepartmentByid (int departmentId) throws SQLException {
		sqlmap.delete("dept.deleteDepartmentByid", departmentId);
	}
	
	public void updateDepartment (Department dept) throws SQLException {
		sqlmap.update("dept.updateDepartment", dept);
	}
}
