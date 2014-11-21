package vn.webapp.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.webapp.dao.ProfessorDAO;
import vn.webapp.model.Degree;
import vn.webapp.model.Professor;
import vn.webapp.model.ProfessorsInfo;

@Service("ProfessorService")
public class ProfessorServiceImpl implements ProfessorService{

	private ProfessorDAO professorDAO;
	@Autowired
	public void setProfessorDAO(ProfessorDAO professorDAO) {
		this.professorDAO = professorDAO;
	}
	@Override
	@Transactional
	public void persistProfessors(Professor professor) {
		// TODO Auto-generated method stub
		professorDAO.persistProfessors(professor);
	}
	@Override
	@Transactional
	public void persistProfessors(Professor professor,
			List<Map<String, Integer>> m) {
		// TODO Auto-generated method stub
		professorDAO.persistProfessors(professor, m);
	}
	@Override
	@Transactional
	public Professor findProfessorById(String id) {
		// TODO Auto-generated method stub
		return professorDAO.findProfessorById(id);
	}
	@Override
	@Transactional
	public void updateProfessor(Professor professor) {
		// TODO Auto-generated method stub
		professorDAO.updateProfessor(professor);
	}
	@Override
	@Transactional
	public void deleteProfessor(Professor professor) {
		// TODO Auto-generated method stub
		professorDAO.deleteProfessor(professor);
	}
	@Override
	@Transactional
	public List<Professor> listProfessors() {
		// TODO Auto-generated method stub
		return professorDAO.listProfessors();
	}
	@Override
	@Transactional
	public List<ProfessorsInfo> listProfessorsDetail() {
		// TODO Auto-generated method stub
		return professorDAO.listProfessorsDetail();
	}
	@Override
	@Transactional
	public List<Degree> listDegrees() {
		// TODO Auto-generated method stub
		return professorDAO.listDegrees();
	}
	
}
