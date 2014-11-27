package vn.webapp.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import com.google.gson.Gson;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import vn.webapp.model.Classes;
import vn.webapp.model.Defensesession;
import vn.webapp.model.Department;
import vn.webapp.model.Institutes;
import vn.webapp.model.Professor;
import vn.webapp.model.Room;
import vn.webapp.model.Slot;
import vn.webapp.model.StudentDefense;
import vn.webapp.model.SubjectCategory;
import vn.webapp.model.SuperviseStudent;
import vn.webapp.model.SuperviseStudentDetail;
import vn.webapp.service.ClassesService;
import vn.webapp.service.DefensessionService;
import vn.webapp.service.DepartmentsService;
import vn.webapp.service.InstitutesSevice;
import vn.webapp.service.ProfessorService;
import vn.webapp.service.SlotRoomManagerService;
import vn.webapp.service.SubjectCategoryService;
import vn.webapp.service.SuperviseStudentService;

@Controller
public class AjaxController {

	@Autowired(required = true)
	@Qualifier(value = "DefensessionService")
	DefensessionService dfsvc;

	public void setDfsvc(DefensessionService dfsvc) {
		this.dfsvc = dfsvc;
	}

	@Autowired(required = true)
	@Qualifier(value = "InstitutesService")
	InstitutesSevice inssvc;

	public void setInssvc(InstitutesSevice inssvc) {
		this.inssvc = inssvc;
	}

	@Autowired(required = true)
	@Qualifier(value = "DepartmentsSevice")
	DepartmentsService dpmsvc;

	public void setDpmsvc(DepartmentsService dpmsvc) {
		this.dpmsvc = dpmsvc;
	}

	@Autowired(required = true)
	@Qualifier(value = "ClassesService")
	ClassesService clssvc;

	public void setClssvc(ClassesService clssvc) {
		this.clssvc = clssvc;
	}

	@Autowired(required = true)
	@Qualifier(value = "SuperviseStudentService")
	SuperviseStudentService supStudentSvc;

	public void setSupStudentSvc(SuperviseStudentService supStudentSvc) {
		this.supStudentSvc = supStudentSvc;
	}

	@Autowired(required = true)
	@Qualifier(value = "SubjectCategoryService")
	SubjectCategoryService subjectCategoriService;

	public void setSubjectCategoriService(
			SubjectCategoryService subjectCategoriService) {
		this.subjectCategoriService = subjectCategoriService;
	}

	@Autowired(required = true)
	@Qualifier(value = "ProfessorService")
	ProfessorService proSvc;

	public void setProSvc(ProfessorService proSvc) {
		this.proSvc = proSvc;
	}

	@Autowired(required = true)
	@Qualifier(value = "SlotRoomManagerService")
	SlotRoomManagerService srms;

	public void setSrms(SlotRoomManagerService srms) {
		this.srms = srms;
	}

	@RequestMapping(value = "/ajaxtest", method = RequestMethod.GET)
	public @ResponseBody String getTime() {

		Random rand = new Random();
		float r = rand.nextFloat() * 100;
		String result = "<br>Next Random # is <b>" + r
				+ "</b>. Generated on <b>" + new Date().toString() + "</b>";
		System.out
				.println("Debug Message from CrunchifySpringAjaxJQuery Controller.."
						+ new Date().toString());
		return result;
	}

	@RequestMapping(value = "/addDefenseSession", method = RequestMethod.GET)
	public @ResponseBody String addDefenseSession(
			@RequestParam(value = "dateDefense") String dateDefense,
			@RequestParam(value = "desDefense") String desDefense,
			@RequestParam(value = "actDefense") String actDefense) {

		System.out.println("OK1: " + dateDefense);
		System.out.println("OK2: " + desDefense);
		System.out.println("OK3: " + actDefense);

		Defensesession df = new Defensesession();
		df.setActive(actDefense);
		df.setDate(dateDefense);
		df.setDescription(desDefense);
		dfsvc.persistDefensesession(df);
		return df.getId();
	}

	@RequestMapping(value = "/delDefenseSession", method = RequestMethod.GET)
	public @ResponseBody boolean delDefenseSession(
			@RequestParam(value = "id") String id) {
		Defensesession dels = new Defensesession();
		dels.setId(id);
		try {
			dfsvc.deleteDefensesession(dels);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@RequestMapping(value = "/updateDefenseSession", method = RequestMethod.GET)
	public @ResponseBody boolean updateDefenseSession(
			@RequestParam(value = "id") String id,
			@RequestParam(value = "date") String date,
			@RequestParam(value = "des") String des,
			@RequestParam(value = "act") String act) {
		Defensesession dels = new Defensesession();
		dels.setId(id);
		dels.setDate(date);
		dels.setDescription(des);
		System.out.println("act: " + act);
		if (act.equals("true")) {
			dels.setActive("1");
		} else {
			dels.setActive("0");
		}
		dfsvc.updateDefensesession(dels);
		return true;
	}

	@RequestMapping(value = "/addInstitute", method = RequestMethod.GET)
	public @ResponseBody boolean addInstitute(
			@RequestParam(value = "name") String name,
			@RequestParam(value = "des") String des) {
		Institutes ins = new Institutes();
		ins.setDescription(des);
		ins.setName(name);
		inssvc.persistInstitutes(ins);
		return true;
	}

	@RequestMapping(value = "/addDepartment", method = RequestMethod.GET)
	public @ResponseBody boolean addDepartment(
			@RequestParam(value = "name") String name,
			@RequestParam(value = "des") String des,
			@RequestParam(value = "idIns") String idIns) {
		Department ins = new Department();
		ins.setDescription(des);
		ins.setName(name);
		ins.setInstituteID(idIns);
		dpmsvc.persistDepartment(ins);
		return true;
	}

	@RequestMapping(value = "/removeInstitute", method = RequestMethod.GET)
	public @ResponseBody boolean removeInstitute(
			@RequestParam(value = "id") String id) {
		Institutes ins = new Institutes();
		ins.setId(id);
		inssvc.deleteInstitutes(ins);
		return true;
	}

	@RequestMapping(value = "/addClass", method = RequestMethod.GET)
	public @ResponseBody boolean addClass(
			@RequestParam(value = "idDpm") String idDpm,
			@RequestParam(value = "name") String name,
			@RequestParam(value = "des") String des) {
		Classes cls = new Classes();
		cls.setDepId(idDpm);
		cls.setName(name);
		cls.setDescription(des);
		clssvc.persistClass(cls);
		return true;
	}

	@RequestMapping(value = "/getClassByDepartment", method = RequestMethod.GET)
	public @ResponseBody List<Classes> getClassByDepartment(
			@RequestParam(value = "idDpm") String idDpm) {

		return clssvc.listClasses(idDpm);
	}

	@RequestMapping(value = "/removeDepartment", method = RequestMethod.GET)
	public @ResponseBody boolean removeDepartment(
			@RequestParam(value = "idDpm") String idDpm) {
		Department dpm = new Department();
		dpm.setId(idDpm);
		dpmsvc.deleteDepartment(dpm);
		return true;
	}

	@RequestMapping(value = "/removeClass", method = RequestMethod.GET)
	public @ResponseBody boolean removeClass(
			@RequestParam(value = "idCls") String idCls) {
		Classes cls = new Classes();
		cls.setId(idCls);
		clssvc.deleteClass(cls);
		return true;
	}

	@RequestMapping(value = "/addStudent", method = RequestMethod.GET)
	public @ResponseBody boolean addStudent(
			@RequestParam(value = "name") String name,
			@RequestParam(value = "id") String id,
			@RequestParam(value = "mail") String mail,
			@RequestParam(value = "tel") String tel,
			@RequestParam(value = "type") String type,
			@RequestParam(value = "class") String cls,
			@RequestParam(value = "promotion") String prm,
			@RequestParam(value = "status") String status) {
		SuperviseStudent spv = new SuperviseStudent();

		spv.setEmail(mail);
		spv.setName(name);
		spv.setPhone(tel);
		spv.setStudentID(id);

		spv.setClassId(cls);
		spv.setPromotion(prm);
		spv.setStatus(status);
		spv.setType(type);
		supStudentSvc.persistSuperviseStudent(spv);
		return true;
	}

	@RequestMapping(value = "/removeStudent", method = RequestMethod.GET)
	public @ResponseBody boolean removeStudent(
			@RequestParam(value = "id") String id) {
		SuperviseStudent spv = new SuperviseStudent();
		spv.setId(id);
		supStudentSvc.deleteSuperviseStudent(spv);
		return true;
	}

	@RequestMapping(value = "/listDepartmentInstitute", method = RequestMethod.GET)
	public @ResponseBody List<Department> listDepartmentInstitute(
			@RequestParam(value = "id") String id) {
		List<Department> ldp = dpmsvc.listDepartmentsInInstitute(id);
		return ldp;
	}

	@RequestMapping(value = "/addSubjectCategory", method = RequestMethod.GET)
	public @ResponseBody SubjectCategory addSubjectCategory(
			@RequestParam(value = "name") String name,
			@RequestParam(value = "des") String des) {
		SubjectCategory sc = new SubjectCategory();
		sc.setDescription(des);
		sc.setName(name);
		subjectCategoriService.persistSubjectCategory(sc);

		return sc;
	}

	@RequestMapping(value = "/removeSubjectCategory", method = RequestMethod.GET)
	public @ResponseBody SubjectCategory removeSubjectCategory(
			@RequestParam(value = "id") String id) {
		SubjectCategory sc = new SubjectCategory();
		sc.setId(id);
		subjectCategoriService.deleteSubjectCategory(sc);

		return sc;
	}

	@RequestMapping(value = "/addProfessor", method = RequestMethod.GET)
	public @ResponseBody Professor addProfessor(
			@RequestParam(value = "name") String name,
			@RequestParam(value = "institute") String institute,
			@RequestParam(value = "department") String department,
			@RequestParam(value = "degree") String degree,
			@RequestParam(value = "levelexpert") String levelexpert,
			@RequestParam(value = "mark") String mark) {
		Professor sc = new Professor();
		sc.setDegreeId(degree);
		sc.setDepartmentId(department);
		sc.setExpertLevel(levelexpert);
		sc.setInstituteID(institute);
		sc.setName(name);
		// proSvc.persistProfessors(sc);
		// System.out.println(sc.getId());
		System.out.println(name);
		Gson gs = new Gson();

		List<Object> x = gs.fromJson(mark, List.class);
		List<Map<String, Integer>> lm = new ArrayList<Map<String, Integer>>();
		for (Object y : x) {
			HashMap<String, Double> r = gs
					.fromJson(y.toString(), HashMap.class);
			System.out.println(r.get("id").intValue() + "/" + r.get("val"));
			Map<String, Integer> ms = new HashMap<String, Integer>();
			ms.put("id", r.get("id").intValue());
			ms.put("val", r.get("val").intValue());
			lm.add(ms);
		}
		proSvc.persistProfessors(sc, lm);
		return sc;
	}

	@RequestMapping(value = "/addSlot", method = RequestMethod.GET)
	public @ResponseBody Slot addSlot(
			@RequestParam(value = "name") String name,
			@RequestParam(value = "start") String start,
			@RequestParam(value = "end") String end) {
		Slot sl = new Slot();
		sl.setName(name);
		sl.setEnd(end);
		sl.setStart(start);
		srms.persistSlot(sl);
		return sl;

	}

	@RequestMapping(value = "/addRoom", method = RequestMethod.GET)
	public @ResponseBody Room addRoom(
			@RequestParam(value = "name") String name,
			@RequestParam(value = "capacity") String cap) {
		Room sl = new Room();
		sl.setName(name);
		sl.setCapacity(cap);
		srms.persistRoom(sl);
		return sl;

	}

	@RequestMapping(value = "/rmRoom", method = RequestMethod.GET)
	public @ResponseBody Room rmRoom(@RequestParam(value = "id") String id) {
		Room sl = new Room();
		sl.setId(id);
		srms.deleteRoom(sl);
		return sl;

	}

	@RequestMapping(value = "/rmSlot", method = RequestMethod.GET)
	public @ResponseBody Slot rmSlot(@RequestParam(value = "id") String id) {
		Slot sl = new Slot();
		sl.setId(id);
		srms.deleteSlot(sl);
		return sl;

	}

	@RequestMapping(value = "/searchStudentByName", method = RequestMethod.GET)
	public @ResponseBody List<SuperviseStudent> searchStudentByName(
			@RequestParam(value = "name") String name) {
		List<SuperviseStudent> lStudent = supStudentSvc
				.listSuperviseStudent(name);
		return lStudent;

	}

	@RequestMapping(value = "/updateSubject", method = RequestMethod.GET)
	public @ResponseBody void updateSubject(
			@RequestParam(value = "id") String id,
			@RequestParam(value = "sub") String sub,
			@RequestParam(value = "spv") String spv,
			@RequestParam(value = "def") String def) {
		// System.out.println("id:"+id+" sub:"+sub+"spv: "+spv+"def: "+def);

		StudentDefense lStudent = supStudentSvc.findStudentDefenseById(id);

		SuperviseStudent sps = lStudent.getSuperviseStudent();
		sps.setTitle(sub);
		lStudent.setSuperviseStudent(sps);

		lStudent.setTitle(sub);

		if (!spv.equals("") && spv != null) {
			Professor p = new Professor();
			p.setId(spv);
			lStudent.setSupervisor(p);
		}
		if (!def.equals("") && def != null) {
			Defensesession df = new Defensesession();
			df.setId(def);
			lStudent.setSession(df);
		}

		supStudentSvc.updateStudentDefense(lStudent);

	}

	@RequestMapping(value = "/updateDefenseStudent", method = RequestMethod.GET)
	public @ResponseBody void updateDefenseStudent(
			@RequestParam(value = "defenseId") String defenseId,
			@RequestParam(value = "president") String president,
			@RequestParam(value = "examiner1") String examiner1,
			@RequestParam(value = "examiner2") String examiner2,
			@RequestParam(value = "secretary") String secretary,
			@RequestParam(value = "additionalMember") String additionalMember,
			@RequestParam(value = "slot") String slot,
			@RequestParam(value = "room") String room) {

		System.out.println(defenseId);
		System.out.println(president);
		System.out.println(examiner1);
		System.out.println(examiner2);
		System.out.println(secretary);
		System.out.println(additionalMember);
		System.out.println(slot);
		System.out.println(room);
		StudentDefense sdf = supStudentSvc.findStudentDefenseById(defenseId);
		Professor prd = new Professor();
		if (!president.isEmpty()) {
			prd.setId(president);
			sdf.setPresident(prd);
		}
		Professor ex1 = new Professor();
		if (!examiner1.isEmpty()) {
			ex1.setId(examiner1);
			sdf.setExaminer1(ex1);
		}
		Professor ex2 = new Professor();
		if (!examiner2.isEmpty()) {
			ex2.setId(examiner2);
			sdf.setExaminer2(ex2);
		}
		Professor sec = new Professor();
		if (!secretary.isEmpty()) {
			sec.setId(secretary);
			sdf.setSecretary(sec);
		}
		Professor addM = new Professor();
		if (!additionalMember.isEmpty()) {
			addM.setId(additionalMember);
			sdf.setAdditionalMember(addM);
		}
		Slot sl = new Slot();
		if (!slot.isEmpty()) {
			sl.setId(slot);
			sdf.setSlot(sl);
		}
		Room rm = new Room();
		if (!room.isEmpty()) {
			rm.setId(room);
			sdf.setRoom(rm);
		}
		
		
		supStudentSvc.updateStudentDefense(sdf);
	}
}
