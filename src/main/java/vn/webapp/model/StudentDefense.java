package vn.webapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "student_defense")
public class StudentDefense {

	@Id @GeneratedValue
	@Column(name = "ID", nullable = false)
	private String id;
	
	@ManyToOne
    @JoinColumn(name = "StudentID", nullable = false)
	private SuperviseStudent superviseStudent ;

	@Column(name = "Title", nullable = true)
	private String title ;

	@ManyToOne
    @JoinColumn(name = "Supervisor", nullable = true)
	private Professor supervisor ;

	@ManyToOne
    @JoinColumn(name = "Examiner1", nullable = true)
	private Professor examiner1 ;

	@ManyToOne
    @JoinColumn(name = "Examiner2", nullable = true)
	private Professor examiner2 ;

	@ManyToOne
    @JoinColumn(name = "President", nullable = true)
	private Professor president ;

	@ManyToOne
    @JoinColumn(name = "Secretary", nullable = true)
	private Professor secretary ;

	@ManyToOne
    @JoinColumn(name = "AdditionalMember", nullable = true)
	private Professor additionalMember ;

	@ManyToOne
    @JoinColumn(name = "Slot", nullable = true)
	private Slot slot ;

	@ManyToOne
    @JoinColumn(name = "Room", nullable = true)
	private Room room ;

	@ManyToOne
    @JoinColumn(name = "SessionID", nullable = true)
	private Defensesession session ;

	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	
	public SuperviseStudent getSuperviseStudent() {
		return superviseStudent;
	}

	public void setSuperviseStudent(SuperviseStudent superviseStudent) {
		this.superviseStudent = superviseStudent;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	

	public Professor getSupervisor() {
		return supervisor;
	}

	public void setSupervisor(Professor supervisor) {
		this.supervisor = supervisor;
	}


	public Professor getExaminer1() {
		return examiner1;
	}

	public void setExaminer1(Professor examiner1) {
		this.examiner1 = examiner1;
	}

	public Professor getExaminer2() {
		return examiner2;
	}

	public void setExaminer2(Professor examiner2) {
		this.examiner2 = examiner2;
	}

	public Professor getPresident() {
		return president;
	}

	public void setPresident(Professor president) {
		this.president = president;
	}

	public Professor getSecretary() {
		return secretary;
	}

	public void setSecretary(Professor secretary) {
		this.secretary = secretary;
	}

	public Professor getAdditionalMember() {
		return additionalMember;
	}

	public void setAdditionalMember(Professor additionalMember) {
		this.additionalMember = additionalMember;
	}

	public Slot getSlot() {
		return slot;
	}

	public void setSlot(Slot slot) {
		this.slot = slot;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	public Defensesession getSession() {
		return session;
	}

	public void setSession(Defensesession session) {
		this.session = session;
	}

	
	
}
