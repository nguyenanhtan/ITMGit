package vn.webapp.dao;

import java.util.List;

import vn.webapp.model.SubjectCategory;

public interface SubjectCategoryDAO {

	void persistSubjectCategory(SubjectCategory subjectCategory);
	  
	SubjectCategory findSubjectCategoryById(String id);
	  
	void updateSubjectCategory(SubjectCategory subjectCategory);
	  
	void deleteSubjectCategory(SubjectCategory subjectCategory);
	List<SubjectCategory> listSubjectCategories();	
}
