package vn.webapp.dao;
import java.util.List;

import vn.webapp.model.Defensesession;
public interface DefensesessionDAO {

	void persistDefensesession(Defensesession defensesession);
	  
	Defensesession findDefensesessionById(String id);
	  
	void updateDefensesession(Defensesession defensesession);
	  
	void deleteDefensesession(Defensesession defensesession);
	List<Defensesession> listDefensesessions();	
}
