package vn.webapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "student_defense_detail")
public class SuperviseStudentDetail {

	@Column(name = "StudentName", nullable = false)
	private String name ;
	
	@Column(name = "Promotion", nullable = false)
	private String promotion ;
	
	@Column(name = "Class", nullable = false)
	private String classId;
	
	@Column(name = "Email", nullable = false)
	private String email ;
	
	@Column(name = "Phone", nullable = false)
	private String phone ;
	
	@Column(name = "StartDate", nullable = true)
	private String startDate ;
	
	@Column(name = "EndDate", nullable = true)
	private String endDate ;
	
	@Column(name = "Type", nullable = true)
	private String type ;
	
	@Column(name = "Status", nullable = true)
	private String status ;

	@Column(name = "StudentID", nullable = true)
	private String studentID ;
	
	@Id @GeneratedValue
	@Column(name = "ID", nullable = false)
	private String id;	

	@Column(name = "Title", nullable = true)
	private String title ;

	@Column(name = "Supervisor", nullable = true)
	private String supervisor ;

	@Column(name = "Examiner1", nullable = true)
	private String examiner1 ;

	@Column(name = "Examiner2", nullable = true)
	private String examiner2 ;

	@Column(name = "President", nullable = true)
	private String president ;

	@Column(name = "Secretary", nullable = true)
	private String secretary ;

	@Column(name = "AdditionalMember", nullable = true)
	private String additionalMember ;

	@Column(name = "Slot", nullable = true)
	private String slot ;

	@Column(name = "Room", nullable = true)
	private String room ;

	@Column(name = "SessionID", nullable = true)
	private String sessionID ;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPromotion() {
		return promotion;
	}

	public void setPromotion(String promotion) {
		this.promotion = promotion;
	}

	public String getClassId() {
		return classId;
	}

	public void setClassId(String classId) {
		this.classId = classId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStudentID() {
		return studentID;
	}

	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSupervisor() {
		return supervisor;
	}

	public void setSupervisor(String supervisor) {
		this.supervisor = supervisor;
	}

	public String getExaminer1() {
		return examiner1;
	}

	public void setExaminer1(String examiner1) {
		this.examiner1 = examiner1;
	}

	public String getExaminer2() {
		return examiner2;
	}

	public void setExaminer2(String examiner2) {
		this.examiner2 = examiner2;
	}

	public String getPresident() {
		return president;
	}

	public void setPresident(String president) {
		this.president = president;
	}

	public String getSecretary() {
		return secretary;
	}

	public void setSecretary(String secretary) {
		this.secretary = secretary;
	}

	public String getAdditionalMember() {
		return additionalMember;
	}

	public void setAdditionalMember(String additionalMember) {
		this.additionalMember = additionalMember;
	}

	public String getSlot() {
		return slot;
	}

	public void setSlot(String slot) {
		this.slot = slot;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public String getSessionID() {
		return sessionID;
	}

	public void setSessionID(String sessionID) {
		this.sessionID = sessionID;
	}
	
	
}
