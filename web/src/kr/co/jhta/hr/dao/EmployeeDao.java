package kr.co.jhta.hr.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.co.jhta.hr.vo.Department;
import kr.co.jhta.hr.vo.Employee;

public class EmployeeDao {
	
	public List<Department> selectAllDepartments() throws Exception {
		List<Department> departments = new ArrayList<Department>();
		
		String sql = "select * from departments";
		
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "zxcv1234");
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs= pstmt.executeQuery();
		
		while (rs.next()) {
			Department dept = new Department();
			dept.setId(rs.getInt("department_id"));
			dept.setName(rs.getString("department_name"));
			dept.setManagerId(rs.getInt("manager_id"));
			dept.setLocationId(rs.getInt("location_id"));
			
			departments.add(dept);
		}
		
		rs.close();
		pstmt.close();
		con.close();
		
		
		return departments;
	}
	

	public List<Employee> selectAllEmployees() throws Exception {
		List<Employee> employees = new ArrayList<Employee>();
		
		String sql = "select * from employees";
		
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "zxcv1234");
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs= pstmt.executeQuery();
		
		while (rs.next()) {
			Employee emp = new Employee();
			emp.setId(rs.getInt("employee_id"));
			emp.setFirstName(rs.getString("first_name"));
			emp.setLastName(rs.getString("last_name"));
			emp.setPhoneNumber(rs.getString("phone_number"));
			emp.setEmail(rs.getString("email"));
			emp.setHireDate(rs.getDate("hire_date"));
			emp.setJobId(rs.getString("job_id"));
			emp.setSalary(rs.getDouble("salary"));
			emp.setCommissionPct(rs.getDouble("commission_pct"));
			emp.setManagerId(rs.getInt("manager_id"));
			emp.setDepartmentId(rs.getInt("department_id"));
			
			employees.add(emp);
		}
		
		rs.close();
		pstmt.close();
		con.close();
		
		
		return employees;
	}
}
