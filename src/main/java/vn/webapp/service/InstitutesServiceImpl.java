package vn.webapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.webapp.dao.InstitutesDAO;
import vn.webapp.model.Institutes;
@Service("InstitutesService")
public class InstitutesServiceImpl implements InstitutesSevice{

	private InstitutesDAO institutesDAO;
	
	@Autowired
	public void setInstitutesDAO(InstitutesDAO institutesDAO) {
		this.institutesDAO = institutesDAO;
	}

	@Override
	@Transactional
	public void persistInstitutes(Institutes institutes) {
		// TODO Auto-generated method stub
		institutesDAO.persistInstitutes(institutes);
	}

	@Override
	@Transactional
	public Institutes findInstitutesById(String id) {
		// TODO Auto-generated method stub
		return institutesDAO.findInstitutesById(id);
	}

	@Override
	@Transactional
	public void updateInstitutes(Institutes institutes) {
		// TODO Auto-generated method stub
		institutesDAO.updateInstitutes(institutes);
	}

	@Override
	@Transactional
	public void deleteInstitutes(Institutes institutes) {
		// TODO Auto-generated method stub
		institutesDAO.deleteInstitutes(institutes);
	}

	@Override
	@Transactional
	public List<Institutes> listInstitutes() {
		// TODO Auto-generated method stub
		return institutesDAO.listInstitutes();
	}
	
}
