package vn.webapp.dao;

import java.util.List;

import vn.webapp.model.Institutes;

public interface InstitutesDAO {

	void persistInstitutes(Institutes institutes);
	  
	Institutes findInstitutesById(String id);
	  
	void updateInstitutes(Institutes institutes);
	  
	void deleteInstitutes(Institutes institutes);
	List<Institutes> listInstitutes();		
}
