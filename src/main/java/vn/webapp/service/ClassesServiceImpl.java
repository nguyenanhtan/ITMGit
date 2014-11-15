package vn.webapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.webapp.dao.ClassesDAO;
import vn.webapp.model.Classes;

@Service("ClassesService")
public class ClassesServiceImpl implements ClassesService{

	private ClassesDAO classDAO;

	@Autowired
	public void setClassDAO(ClassesDAO classDAO) {
		this.classDAO = classDAO;
	}

	@Override
	@Transactional
	public void persistClass(Classes Classes) {
		// TODO Auto-generated method stub
		classDAO.persistClass(Classes);
	}

	@Override
	@Transactional
	public Classes findClassById(String id) {
		// TODO Auto-generated method stub
		return classDAO.findClassById(id);
	}

	@Override
	@Transactional
	public void updateClass(Classes Classes) {
		// TODO Auto-generated method stub
		classDAO.updateClass(Classes);
	}

	@Override
	@Transactional
	public void deleteClass(Classes Classes) {
		// TODO Auto-generated method stub
		classDAO.deleteClass(Classes);
	}

	@Override
	@Transactional
	public List<Classes> listClasses() {
		// TODO Auto-generated method stub
		return classDAO.listClasses();
	}

	@Override
	@Transactional
	public List<Classes> listClasses(String dpm) {
		// TODO Auto-generated method stub
		return classDAO.listClasses(dpm);
	}
	
}
