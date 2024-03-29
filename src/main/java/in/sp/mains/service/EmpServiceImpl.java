package in.sp.mains.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.sp.mains.entity.Employee;
import in.sp.mains.repository.EmpRepository;

@Service
public class EmpServiceImpl implements EmpService
{
	@Autowired
	EmpRepository empRepository;

	@Override
	public boolean addEmpService(Employee emp) 
	{
		boolean status = false;
		try 
		{
			empRepository.save(emp);
			status = true;

		} 
		catch (Exception e) 
		{
			status = false;
			e.printStackTrace();
		}
		return status;
	}
	
	@Override
	public List<Employee> getAllEmployeesService()
	{
		return empRepository.findAll();
	}
	
	@Override
	public Employee login(String email)
	{
		Employee emp = empRepository.findByEmail(email);
		return emp;
	}
	
	@Override
	public boolean deleteEmployeeService(String email)
	{
		boolean status = false;
		try {
			empRepository.deleteByEmail(email);
			status = true;
		} catch (Exception e) {
			e.printStackTrace();
			status = false;
		}
		return status;
	}

}
