package vn.webapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.webapp.dao.SubjectCategoryDAO;
import vn.webapp.model.SubjectCategory;
@Service("SubjectCategoryService")
public class SubjectCategoryServiceImpl implements SubjectCategoryService{

	private SubjectCategoryDAO subjectCategory;
	@Autowired
	public void setSubjectCategory(SubjectCategoryDAO subjectCategory) {
		this.subjectCategory = subjectCategory;
	}
	@Override
	@Transactional
	public void persistSubjectCategory(SubjectCategory subjectCategory) {
		// TODO Auto-generated method stub
		this.subjectCategory.persistSubjectCategory(subjectCategory);
	}
	@Override
	@Transactional
	public SubjectCategory findSubjectCategoryById(String id) {
		// TODO Auto-generated method stub
		return this.subjectCategory.findSubjectCategoryById(id);
	}
	@Override
	@Transactional
	public void updateSubjectCategory(SubjectCategory subjectCategory) {
		// TODO Auto-generated method stub
		this.subjectCategory.updateSubjectCategory(subjectCategory);
	}
	@Override
	@Transactional
	public void deleteSubjectCategory(SubjectCategory subjectCategory) {
		// TODO Auto-generated method stub
		this.subjectCategory.deleteSubjectCategory(subjectCategory);
	}
	@Override
	@Transactional
	public List<SubjectCategory> listSubjectCategories() {
		// TODO Auto-generated method stub
		return this.subjectCategory.listSubjectCategories();
	}
	
}
