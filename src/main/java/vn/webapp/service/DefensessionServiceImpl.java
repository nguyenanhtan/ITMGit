package vn.webapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.webapp.dao.DefensesessionDAO;
import vn.webapp.model.Defensesession;

@Service("DefensessionService")
public class DefensessionServiceImpl implements DefensessionService{

	private DefensesessionDAO defenDAO;
	
	@Autowired
	public void setDefenDAO(DefensesessionDAO defenDAO) {
		this.defenDAO = defenDAO;
	}
	@Override
	@Transactional
	public void persistDefensesession(Defensesession defensesession)
	{
		defenDAO.persistDefensesession(defensesession);
	}
	@Override 
	@Transactional
	public Defensesession findDefensesessionById(String id){
		return defenDAO.findDefensesessionById(id);
	}
	@Override  
	@Transactional
	public void updateDefensesession(Defensesession defensesession){
		defenDAO.updateDefensesession(defensesession);
	}
	@Override  
	@Transactional
	public void deleteDefensesession(Defensesession defensesession){
		defenDAO.deleteDefensesession(defensesession);
	}
	@Override  
	@Transactional
	public List<Defensesession> listDefensesessions(){
		return defenDAO.listDefensesessions();
	}
}
