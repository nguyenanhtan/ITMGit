package vn.webapp.dao;

import java.util.List;

import vn.webapp.model.Classes;

public interface ClassesDAO {

	void persistClass(Classes Classes);
	  
	Classes findClassById(String id);
	  
	void updateClass(Classes Classes);
	  
	void deleteClass(Classes Classes);
	List<Classes> listClasses();
	List<Classes> listClasses(String dpm);
}
