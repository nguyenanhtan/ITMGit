package vn.webapp.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.webapp.model.SubjectCategory;

@Repository("SubjectCategoryDAO")
public class SubjectCategoryDAOImpl implements SubjectCategoryDAO{

	public SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void persistSubjectCategory(SubjectCategory subjectCategory) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(subjectCategory);
	}

	@Override
	public SubjectCategory findSubjectCategoryById(String id) {
		// TODO Auto-generated method stub
		return (SubjectCategory) sessionFactory.getCurrentSession().get(SubjectCategory.class, id);
	}

	@Override
	public void updateSubjectCategory(SubjectCategory subjectCategory) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(subjectCategory);
	}

	@Override
	public void deleteSubjectCategory(SubjectCategory subjectCategory) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(subjectCategory);
	}

	@Override
	public List<SubjectCategory> listSubjectCategories() {
		// TODO Auto-generated method stub
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM subject_categories");
		q.addEntity(SubjectCategory.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}
}
