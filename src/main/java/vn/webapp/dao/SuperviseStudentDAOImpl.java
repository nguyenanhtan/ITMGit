package vn.webapp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.webapp.model.Classes;
import vn.webapp.model.Professor;
import vn.webapp.model.Promotion;
import vn.webapp.model.Status;
import vn.webapp.model.StudentDefense;
import vn.webapp.model.SuperviseStudent;
import vn.webapp.model.SuperviseStudentDetail;
import vn.webapp.model.Type;

@Repository("SuperviseStudentDAO")
public class SuperviseStudentDAOImpl implements SuperviseStudentDAO {

	
	public SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void persistSuperviseStudent(SuperviseStudent superviseStudent) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(superviseStudent);
		StudentDefense sdf = new StudentDefense();
		sdf.setSuperviseStudent(superviseStudent);
		sessionFactory.getCurrentSession().persist(sdf);
	}

	@Override
	public SuperviseStudent findSuperviseStudentById(String id) {
		// TODO Auto-generated method stub
		return (SuperviseStudent) sessionFactory.getCurrentSession().get(SuperviseStudent.class, id);
	}

	@Override
	public void updateSuperviseStudent(SuperviseStudentDetail superviseStudent) {
		// TODO Auto-generated method stub
		SuperviseStudent upStudent = (SuperviseStudent)sessionFactory.getCurrentSession().get(SuperviseStudent.class, superviseStudent.getId());
		upStudent.setTitle(superviseStudent.getTitle());		
		sessionFactory.getCurrentSession().update(upStudent);
		Professor ps = (Professor)sessionFactory.getCurrentSession().get(Professor.class, superviseStudent.getSupervisor());
		Query query = sessionFactory.getCurrentSession().createQuery("FROM StudentDefense WHERE studentID = :studentID");
		query.setParameter("studentID", superviseStudent.getId());
		List<StudentDefense> results = (List<StudentDefense>)query.list();
		StudentDefense sd = null;
		if(results != null){
			sd = results.get(0);
		}
		sd.setSupervisor(ps);
		sessionFactory.getCurrentSession().update(ps);
				
	}

	@Override
	public void deleteSuperviseStudent(SuperviseStudent superviseStudent) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(superviseStudent);
	}

	@Override
	public List<SuperviseStudent> listSuperviseStudent() {
		// TODO Auto-generated method stub
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM supervise_students");
		q.addEntity(SuperviseStudent.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}

	@Override
	public List<StudentDefense> listStudentDefense() {
		// TODO Auto-generated method stub
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM student_defense");
		q.addEntity(StudentDefense.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}

	@Override
	public List<Classes> listClass() {
		// TODO Auto-generated method stub
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM classes");
		q.addEntity(Classes.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}

	@Override
	public List<Promotion> listPromotion() {
		// TODO Auto-generated method stub
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM promotion");
		q.addEntity(Promotion.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}

	@Override
	public List<Type> listType() {
		// TODO Auto-generated method stub
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM type_project");
		q.addEntity(Type.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}

	@Override
	public List<Status> listStatus() {
		// TODO Auto-generated method stub
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM student_status");
		q.addEntity(Status.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}
	@Override
	public List<SuperviseStudent> listSuperviseStudent(String name) {
		// TODO Auto-generated method stub
		name = "%"+name+"%";
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM supervise_students WHERE StudentName LIKE ?");
		q.setString(0, name);
		q.addEntity(SuperviseStudent.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}

	
}
