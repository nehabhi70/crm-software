package in.sp.mains.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import in.sp.mains.entity.Employee;
import java.util.List;

@Transactional
public interface EmpRepository extends JpaRepository<Employee, Integer>
{
	Employee findByEmail(String email);
	void deleteByEmail(String email);

}
