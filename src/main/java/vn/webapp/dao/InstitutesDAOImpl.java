package vn.webapp.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import vn.webapp.model.Institutes;
@Repository("InstitutesDAO")
public class InstitutesDAOImpl implements InstitutesDAO{

	public SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	/*@Transactional(propagation=Propagation.REQUIRES_NEW)*/
	public void persistInstitutes(Institutes institutes) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(institutes);
	}

	@Override	
	public Institutes findInstitutesById(String id) {
		// TODO Auto-generated method stub
		return (Institutes) sessionFactory.getCurrentSession().get(Institutes.class, id);
	}

	@Override
	public void updateInstitutes(Institutes institutes) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(institutes);
	}

	@Override
	public void deleteInstitutes(Institutes institutes) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(institutes);
	}

	@Override
	public List<Institutes> listInstitutes() {
		// TODO Auto-generated method stub
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM institutes");
		q.addEntity(Institutes.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}
	
	
}
