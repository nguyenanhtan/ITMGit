package vn.webapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "professors")
public class Professor {

	@Id @GeneratedValue
	@Column(name = "ID", nullable = false)
	private String id;
	
	@Column(name = "Department", nullable = false)
	private String departmentId ;
	
	@Column(name = "Name", nullable = false)
	private String name;
	
	@Column(name = "ExpertLevel", nullable = false)
	private String expertLevel;
	
	@Column(name = "Degree", nullable = false)
	private String degreeId;
	
	@Column(name = "InstituteID", nullable = false)
	private String instituteID;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	public String getExpertLevel() {
		return expertLevel;
	}

	public void setExpertLevel(String expertLevel) {
		this.expertLevel = expertLevel;
	}

	public String getDegreeId() {
		return degreeId;
	}

	public void setDegreeId(String degreeId) {
		this.degreeId = degreeId;
	}

	public String getInstituteID() {
		return instituteID;
	}

	public void setInstituteID(String instituteID) {
		this.instituteID = instituteID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
}
