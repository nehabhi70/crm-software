package in.sp.mains.service;

import java.util.List;

import in.sp.mains.entity.Employee;

public interface EmpService 
{
	public Employee login(String email); 
	public boolean addEmpService(Employee emp);
	public List<Employee> getAllEmployeesService();
	public boolean deleteEmployeeService(String email);

}
