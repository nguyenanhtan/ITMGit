package vn.webapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.webapp.dao.SuperviseStudentDAO;
import vn.webapp.model.Classes;
import vn.webapp.model.Promotion;
import vn.webapp.model.Status;
import vn.webapp.model.SuperviseStudent;
import vn.webapp.model.Type;

@Service("SuperviseStudentService")
public class SuperviseStudentServiceImpl implements SuperviseStudentService {

	private SuperviseStudentDAO supStudentDAO;

	@Autowired
	public void setSupStudentDAO(SuperviseStudentDAO supStudentDAO) {
		this.supStudentDAO = supStudentDAO;
	}

	@Override
	@Transactional
	public void persistSuperviseStudent(SuperviseStudent superviseStudent) {
		// TODO Auto-generated method stub
		supStudentDAO.persistSuperviseStudent(superviseStudent);
	}

	@Override
	@Transactional
	public SuperviseStudent findSuperviseStudentById(String id) {
		// TODO Auto-generated method stub
		return supStudentDAO.findSuperviseStudentById(id);
	}

	@Override
	@Transactional
	public void updateSuperviseStudent(SuperviseStudent superviseStudent) {
		// TODO Auto-generated method stub
		supStudentDAO.updateSuperviseStudent(superviseStudent);
	}

	@Override
	@Transactional
	public void deleteSuperviseStudent(SuperviseStudent superviseStudent) {
		// TODO Auto-generated method stub
		supStudentDAO.deleteSuperviseStudent(superviseStudent);
	}

	@Override
	@Transactional
	public List<SuperviseStudent> listSuperviseStudent() {
		// TODO Auto-generated method stub
		return supStudentDAO.listSuperviseStudent();
	}

	@Override
	@Transactional
	public List<Classes> listClass() {
		// TODO Auto-generated method stub
		return supStudentDAO.listClass();
	}

	@Override
	@Transactional
	public List<Promotion> listPromotion() {
		// TODO Auto-generated method stub
		return supStudentDAO.listPromotion();
	}

	@Override
	@Transactional
	public List<Type> listType() {
		// TODO Auto-generated method stub
		return supStudentDAO.listType();
	}

	@Override
	@Transactional
	public List<Status> listStatus() {
		// TODO Auto-generated method stub
		return supStudentDAO.listStatus();
	}

	@Override
	@Transactional
	public List<SuperviseStudent> listSuperviseStudent(String name) {
		// TODO Auto-generated method stub
		return supStudentDAO.listSuperviseStudent(name);
	}
	
}
