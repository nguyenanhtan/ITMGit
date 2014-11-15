package vn.webapp.service;

import java.util.List;

import vn.webapp.model.Department;

public interface DepartmentsService {

	void persistDepartment(Department department);
	  
	Department findDepartmentById(String id);
	  
	void updateDepartment(Department department);
	  
	void deleteDepartment(Department department);
	List<Department> listDepartment();	
	public List<Department> listDepartmentsInInstitute(String idIns) ;
}
