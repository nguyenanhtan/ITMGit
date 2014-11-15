package vn.webapp.service;

import java.util.List;

import vn.webapp.model.Classes;

public interface ClassesService {

	void persistClass(Classes Classes);
	  
	Classes findClassById(String id);
	  
	void updateClass(Classes Classes);
	  
	void deleteClass(Classes Classes);
	List<Classes> listClasses();
	List<Classes> listClasses(String dpm);
}
