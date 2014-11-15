package vn.webapp.service;

import java.util.List;

import vn.webapp.model.Defensesession;

public interface DefensessionService {

	void persistDefensesession(Defensesession defensesession);
	  
	Defensesession findDefensesessionById(String id);
	  
	void updateDefensesession(Defensesession defensesession);
	  
	void deleteDefensesession(Defensesession defensesession);
	List<Defensesession> listDefensesessions();
}
