package vn.webapp.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.webapp.model.Department;
@Repository("DepartmentsDAO")
public class DepartmentsDAOImpl implements DepartmentsDAO{

	public SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void persistDepartment(Department department) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(department);
	}

	@Override
	public Department findDepartmentById(String id) {
		// TODO Auto-generated method stub
		return (Department) sessionFactory.getCurrentSession().get(Department.class, id);
	}

	@Override
	public void updateDepartment(Department department) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(department);
	}

	@Override
	public void deleteDepartment(Department department) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(department);
	}

	@Override
	public List<Department> listDepartment() {
		// TODO Auto-generated method stub
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM departments");
		q.addEntity(Department.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}
	@Override
	public List<Department> listDepartmentsInInstitute(String idIns) {
		// TODO Auto-generated method stub
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM departments WHERE InstituteID	= "+idIns);
		q.addEntity(Department.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}
}
