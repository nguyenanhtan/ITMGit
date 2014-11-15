package vn.webapp.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.webapp.model.Classes;
@Repository("ClassesDAO")
public class ClassesDAOImpl implements ClassesDAO {

	public SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void persistClass(Classes Classes) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(Classes);
	}

	@Override
	public Classes findClassById(String id) {
		// TODO Auto-generated method stub
		return (Classes) sessionFactory.getCurrentSession().get(Classes.class, id);
	}

	@Override
	public void updateClass(Classes Classes) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(Classes);
	}

	@Override
	public void deleteClass(Classes Classes) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(Classes);
	}

	@Override
	public List<Classes> listClasses() {
		// TODO Auto-generated method stub
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM classes");
		q.addEntity(Classes.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}
	@Override
	public List<Classes> listClasses(String dpm) {
		// TODO Auto-generated method stub
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM classes WHERE DepartmentID = "+dpm);
		q.addEntity(Classes.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}
}
