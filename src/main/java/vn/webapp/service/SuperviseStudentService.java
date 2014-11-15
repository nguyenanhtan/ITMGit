package vn.webapp.service;

import java.util.List;

import vn.webapp.model.Classes;
import vn.webapp.model.Promotion;
import vn.webapp.model.Status;
import vn.webapp.model.SuperviseStudent;
import vn.webapp.model.Type;

public interface SuperviseStudentService {
	void persistSuperviseStudent(SuperviseStudent superviseStudent);
	  
	SuperviseStudent findSuperviseStudentById(String id);
	  
	void updateSuperviseStudent(SuperviseStudent superviseStudent);
	  
	void deleteSuperviseStudent(SuperviseStudent superviseStudent);
	List<SuperviseStudent> listSuperviseStudent();	
	List<SuperviseStudent> listSuperviseStudent(String name);	
	List<Classes> listClass();
	List<Promotion> listPromotion();
	List<Type> listType();
	List<Status> listStatus();
}
