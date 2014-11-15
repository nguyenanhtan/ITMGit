package vn.webapp.service;

import java.util.List;

import vn.webapp.model.Institutes;

public interface InstitutesSevice {

	void persistInstitutes(Institutes institutes);
	  
	Institutes findInstitutesById(String id);
	  
	void updateInstitutes(Institutes institutes);
	  
	void deleteInstitutes(Institutes institutes);
	List<Institutes> listInstitutes();
}
