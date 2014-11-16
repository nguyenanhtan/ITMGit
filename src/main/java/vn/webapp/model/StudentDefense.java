package vn.webapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "student_defense")
public class StudentDefense {

	@Id @GeneratedValue
	@Column(name = "ID", nullable = false)
	private String id;
	
	@Column(name = "StudentID", nullable = false)
	private String studentID ;

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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getStudentID() {
		return studentID;
	}

	public void setStudentID(String studentID) {
		this.studentID = studentID;
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
