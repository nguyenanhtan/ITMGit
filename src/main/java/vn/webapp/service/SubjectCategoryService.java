package vn.webapp.service;

import java.util.List;

import vn.webapp.model.SubjectCategory;

public interface SubjectCategoryService {

	void persistSubjectCategory(SubjectCategory subjectCategory);
	  
	SubjectCategory findSubjectCategoryById(String id);
	  
	void updateSubjectCategory(SubjectCategory subjectCategory);
	  
	void deleteSubjectCategory(SubjectCategory subjectCategory);
	List<SubjectCategory> listSubjectCategories();	
}
