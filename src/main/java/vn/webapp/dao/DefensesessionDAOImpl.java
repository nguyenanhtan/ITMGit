package vn.webapp.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.webapp.model.Defensesession;

@Repository("DefensesessionDAO")
public class DefensesessionDAOImpl implements DefensesessionDAO{

	//@Autowired
	public SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public void persistDefensesession(Defensesession defensesession)
	{
		sessionFactory.getCurrentSession().persist(defensesession);
	}
	@Override 
	public Defensesession findDefensesessionById(String id){
		return (Defensesession) sessionFactory.getCurrentSession().get(Defensesession.class, id);
	}
	@Override  
	public void updateDefensesession(Defensesession defensesession){
		sessionFactory.getCurrentSession().update(defensesession);
	}
	@Override  
	public void deleteDefensesession(Defensesession defensesession){
		sessionFactory.getCurrentSession().delete(defensesession);
	}
	@Override
	public List<Defensesession> listDefensesessions(){
//		sessionFactory.getCurrentSession().beginTransaction();
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM defensesession");
		q.addEntity(Defensesession.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}
}
