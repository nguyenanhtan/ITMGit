package vn.webapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "supervise_students")
public class SuperviseStudent {

	@Id @GeneratedValue
	@Column(name = "ID", nullable = false)
	private String id;
	
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

	@Column(name = "Title", nullable = true)
	private String title ;

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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
}
