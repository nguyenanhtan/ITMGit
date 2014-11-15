package vn.webapp.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.webapp.model.Degree;
import vn.webapp.model.Professor;
import vn.webapp.model.ProfessorSubjectCategory;
import vn.webapp.model.ProfessorsInfo;

@Repository("ProfessorDAO")
public class ProfessorDAOImpl implements  ProfessorDAO{

	

	public SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void persistProfessors(Professor professor) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(professor);
	}

	@Override
	public void persistProfessors(Professor professor,
			List<Map<String, Integer>> m) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(professor);
		
		for(Map<String, Integer> x:m){
			ProfessorSubjectCategory z = new ProfessorSubjectCategory();
			z.setProfessorID(professor.getId());
			z.setSubjectCategoryID(x.get("id").intValue()+"");
			z.setMatchScore(x.get("val").intValue()+"");	
			sessionFactory.getCurrentSession().persist(z);
		}
		
	}
	@Override
	public Professor findProfessorById(String id) {
		// TODO Auto-generated method stub
		return (Professor) sessionFactory.getCurrentSession().get(Professor.class, id);
	}

	@Override
	public void updateProfessor(Professor professor) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(professor);
	}

	@Override
	public void deleteProfessor(Professor professor) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(professor);
	}

	@Override
	public List<ProfessorsInfo> listProfessors() {
		// TODO Auto-generated method stub
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM professors_info");
		q.addEntity(ProfessorsInfo.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}
	@Override
	public List<Degree> listDegrees() {
		// TODO Auto-generated method stub
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM degree");
		q.addEntity(Degree.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}
}
