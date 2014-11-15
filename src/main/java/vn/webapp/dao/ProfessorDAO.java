package vn.webapp.dao;

import java.util.List;
import java.util.Map;

import vn.webapp.model.Degree;
import vn.webapp.model.Professor;
import vn.webapp.model.ProfessorsInfo;

public interface ProfessorDAO {

	void persistProfessors(Professor professor);
	void persistProfessors(Professor professor,List<Map<String,Integer>> m);
	Professor findProfessorById(String id);
	  
	void updateProfessor(Professor professor);
	  
	void deleteProfessor(Professor professor);
	List<ProfessorsInfo> listProfessors();	
	List<Degree> listDegrees();
}
