package vn.webapp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import vn.webapp.dto.DataPage;
import vn.webapp.model.Defensesession;
import vn.webapp.model.Department;
import vn.webapp.model.Institutes;
import vn.webapp.model.Professor;
import vn.webapp.model.StudentDefense;
import vn.webapp.model.SuperviseStudent;
import vn.webapp.model.Users;
import vn.webapp.service.DepartmentsService;
import vn.webapp.service.InstitutesSevice;
import vn.webapp.service.ProfessorService;
import vn.webapp.service.SlotRoomManagerService;
import vn.webapp.service.SubjectCategoryService;
import vn.webapp.service.SuperviseStudentService;
import vn.webapp.service.UserService;
import vn.webapp.service.DefensessionService;

@Controller
public class HomeController {

	@Autowired(required=true)
    @Qualifier(value="userService")
	UserService uservice;
	
	public void setUservice(UserService uservice) {
		this.uservice = uservice;
	}
	@Autowired(required=true)
    @Qualifier(value="DefensessionService")
	DefensessionService dfsvc;
	
	public void setDfsvc(DefensessionService dfsvc) {
		this.dfsvc = dfsvc;
	}
	@Autowired(required=true)
    @Qualifier(value="InstitutesService")
	InstitutesSevice inssvc;
	
	
	public void setInssvc(InstitutesSevice inssvc) {
		this.inssvc = inssvc;
	}
	
	@Autowired(required=true)
    @Qualifier(value="DepartmentsSevice")
	DepartmentsService dpmsvc;
	
	
	
	public void setDpmsvc(DepartmentsService dpmsvc) {
		this.dpmsvc = dpmsvc;
	}
	
	@Autowired(required=true)
    @Qualifier(value="SuperviseStudentService")
	SuperviseStudentService supStudentSvc;
	
	
	public void setSupStudentSvc(SuperviseStudentService supStudentSvc) {
		this.supStudentSvc = supStudentSvc;
	}
	
	
	@Autowired(required=true)
    @Qualifier(value="SubjectCategoryService")
	SubjectCategoryService subjectCategoriService;
	
	public void setSubjectCategoriService(
			SubjectCategoryService subjectCategoriService) {
		this.subjectCategoriService = subjectCategoriService;
	}
	@Autowired(required=true)
    @Qualifier(value="ProfessorService")
	ProfessorService proSvc;
	
	
	public void setProSvc(ProfessorService proSvc) {
		this.proSvc = proSvc;
	}
	
	@Autowired(required=true)
    @Qualifier(value="SlotRoomManagerService")
	SlotRoomManagerService srms;
	
	public void setSrms(SlotRoomManagerService srms) {
		this.srms = srms;
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		DataPage<Users> dpu = (DataPage<Users>)uservice.list();
		int x = dpu.getData().size();
		model.addAttribute("size", x);
		return "index";
	}
	@RequestMapping(value = "/schedulejuries", method = RequestMethod.GET)
	public String schedulejuries(@RequestParam(value="def", required=false) String defId, Model model) {
		
		List<Defensesession> listDefense = this.dfsvc.listDefensesessions();
		model.addAttribute("listDefense", listDefense);
		model.addAttribute("listProfessors", proSvc.listProfessors());
		if(defId == null){
			model.addAttribute("listStudentDefense", supStudentSvc.listStudentDefense(listDefense.get(0).getId()));
			model.addAttribute("sessionActive", listDefense.get(0).getId());
		}else if(defId.equals("ALL")){
			model.addAttribute("listStudentDefense", supStudentSvc.listStudentDefense());
			model.addAttribute("sessionActive", "ALL");
		}else{
			model.addAttribute("listStudentDefense", supStudentSvc.listStudentDefense(defId));
			model.addAttribute("sessionActive", defId);		
		}
		model.addAttribute("listSlot", srms.listSlots());
		model.addAttribute("listRoom", srms.listRooms());
		
		
		return "schedulejuries";
	}
	@RequestMapping(value = "/DefenseSessionsManager", method = RequestMethod.GET)
	public String DefenseSessionsManager(Locale locale, Model model) {
		
		List<Defensesession> listDefense = this.dfsvc.listDefensesessions();
		model.addAttribute("listDefense", listDefense);
		return "DefenseSessionsManager";
	}
	@RequestMapping(value = "/StudentManager", method = RequestMethod.GET)
	public String StudentManager(Locale locale, Model model) {
		
		model.addAttribute("listClass", supStudentSvc.listClass());
		model.addAttribute("listPromotion", supStudentSvc.listPromotion());
		model.addAttribute("listType", supStudentSvc.listType());
		model.addAttribute("listStatus", supStudentSvc.listStatus());
		model.addAttribute("listSuperviseStudent", supStudentSvc.listSuperviseStudent());
		model.addAttribute("datatest", "Data test!");
		return "StudentManager";
	}
	@RequestMapping(value = "/StructureManager", method = RequestMethod.GET)
	public String StructureManager(Locale locale, Model model) {
		
		List<Institutes> listIns = inssvc.listInstitutes();
		Map<String, List<Department>> listdpm = new HashMap<String, List<Department>>();
		for(Institutes x:listIns)
		{
			listdpm.put(x.getId(),dpmsvc.listDepartmentsInInstitute(x.getId()));
		}
		model.addAttribute("listDepartmentInIns",listdpm);
		model.addAttribute("listInstitute", listIns);		
		return "StructureManager";
	}
	@RequestMapping(value = "/TeacherManager", method = RequestMethod.GET)
	public String TeacherManager(Locale locale, Model model) {
		
		model.addAttribute("listProfessors", proSvc.listProfessors());
		model.addAttribute("listDegrees", proSvc.listDegrees());
		model.addAttribute("listInstitute", inssvc.listInstitutes());		
		model.addAttribute("listCategory", subjectCategoriService.listSubjectCategories());
		return "TeacherManager";
	}
	@RequestMapping(value = "/SubjectCategoriesManager", method = RequestMethod.GET)
	public String SubjectCategoriesManager(Locale locale, Model model) {
		
		model.addAttribute("listCategory", subjectCategoriService.listSubjectCategories());
		return "SubjectCategoriesManager";
	}
	@RequestMapping(value = "/SlotRoomManager", method = RequestMethod.GET)
	public String SlotRoomManager(Locale locale, Model model) {
		
		model.addAttribute("listRooms", srms.listRooms());
		model.addAttribute("listSlots", srms.listSlots());
		return "SlotRoomManager";
	}
	@RequestMapping(value = "/AssignmentSubject", method = RequestMethod.GET)
	public String AssignmentSubject(Locale locale, Model model) {
		model.addAttribute("listDefense", this.dfsvc.listDefensesessions());
		model.addAttribute("listStudentDefense", supStudentSvc.listStudentDefense());
		model.addAttribute("listProfessors", proSvc.listProfessors());
		return "AssignmentSubject";
	}
}
