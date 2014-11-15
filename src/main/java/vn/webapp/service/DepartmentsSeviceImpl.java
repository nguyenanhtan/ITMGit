package vn.webapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.webapp.dao.DepartmentsDAO;
import vn.webapp.model.Department;
@Service("DepartmentsSevice")
public class DepartmentsSeviceImpl implements DepartmentsService{

	private DepartmentsDAO departmentDAO;
	@Autowired
	public void setDepartmentDAO(DepartmentsDAO departmentDAO) {
		this.departmentDAO = departmentDAO;
	}
	@Override
	@Transactional
	public void persistDepartment(Department department) {
		// TODO Auto-generated method stub
		departmentDAO.persistDepartment(department);
	}
	@Override
	@Transactional
	public Department findDepartmentById(String id) {
		// TODO Auto-generated method stub
		return departmentDAO.findDepartmentById(id);
	}
	@Override
	@Transactional
	public void updateDepartment(Department department) {
		// TODO Auto-generated method stub
		departmentDAO.updateDepartment(department);
	}
	@Override
	@Transactional
	public void deleteDepartment(Department department) {
		// TODO Auto-generated method stub
		departmentDAO.deleteDepartment(department);
	}
	@Override
	@Transactional
	public List<Department> listDepartment() {
		// TODO Auto-generated method stub
		return departmentDAO.listDepartment();
	}
	@Override
	@Transactional
	public List<Department> listDepartmentsInInstitute(String idIns) {
		return departmentDAO.listDepartmentsInInstitute(idIns);
	}
}
