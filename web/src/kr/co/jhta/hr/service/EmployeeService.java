package kr.co.jhta.hr.service;

import java.util.List;

import kr.co.jhta.hr.dao.EmployeeDao;
import kr.co.jhta.hr.vo.Department;
import kr.co.jhta.hr.vo.Employee;

public class EmployeeService {
	
	private EmployeeDao employeeDao = new EmployeeDao();
	
	public List<Employee> getAllEmployees() throws Exception {
		
		return employeeDao.selectAllEmployees();
	}
	
	public List<Department> getAllDepartments() throws Exception {
		return employeeDao.selectAllDepartments();
	}
}
