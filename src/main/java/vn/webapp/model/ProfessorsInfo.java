package vn.webapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "professors_info")
public class ProfessorsInfo {

	@Id @GeneratedValue
	@Column(name = "ID", nullable = false)
	private String id;
	
	@Column(name = "Name", nullable = false)
	private String name ;
	
	@Column(name = "ExpertLevel", nullable = false)
	private String expertLevel ;
	
	@Column(name = "Department", nullable = false)
	private String department ;
	
	@Column(name = "Institute", nullable = false)
	private String institute ;
	
	@Column(name = "Degree", nullable = false)
	private String degree ;

	@Column(name = "DepartmentID", nullable = false)
	private String departmentID ;
	
	@Column(name = "InstituteID", nullable = false)
	private String instituteID ;
	
	@Column(name = "DegreeID", nullable = false)
	private String degreeID ;

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

	public String getExpertLevel() {
		return expertLevel;
	}

	public void setExpertLevel(String expertLevel) {
		this.expertLevel = expertLevel;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getInstitute() {
		return institute;
	}

	public void setInstitute(String institute) {
		this.institute = institute;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getDepartmentID() {
		return departmentID;
	}

	public void setDepartmentID(String departmentID) {
		this.departmentID = departmentID;
	}

	public String getInstituteID() {
		return instituteID;
	}

	public void setInstituteID(String instituteID) {
		this.instituteID = instituteID;
	}

	public String getDegreeID() {
		return degreeID;
	}

	public void setDegreeID(String degreeID) {
		this.degreeID = degreeID;
	}
	
	
	
}
