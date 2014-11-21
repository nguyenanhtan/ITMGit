package vn.webapp.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
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

	@OneToMany(fetch = FetchType.EAGER, mappedBy="supervisor", cascade = CascadeType.ALL)
    private Set<StudentDefense> supervisorStudent;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy="examiner1", cascade = CascadeType.ALL)
    private Set<StudentDefense> examiner1Student;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy="examiner2", cascade = CascadeType.ALL)
    private Set<StudentDefense> examiner2Student;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy="president", cascade = CascadeType.ALL)
    private Set<StudentDefense> presidentStudent;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy="secretary", cascade = CascadeType.ALL)
    private Set<StudentDefense> secretaryStudent;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy="additionalMember", cascade = CascadeType.ALL)
    private Set<StudentDefense> additionalMemberStudent;
	
	
	
	
	public Set<StudentDefense> getExaminer1Student() {
		return examiner1Student;
	}

	public void setExaminer1Student(Set<StudentDefense> examiner1Student) {
		this.examiner1Student = examiner1Student;
	}

	public Set<StudentDefense> getExaminer2Student() {
		return examiner2Student;
	}

	public void setExaminer2Student(Set<StudentDefense> examiner2Student) {
		this.examiner2Student = examiner2Student;
	}

	public Set<StudentDefense> getPresidentStudent() {
		return presidentStudent;
	}

	public void setPresidentStudent(Set<StudentDefense> presidentStudent) {
		this.presidentStudent = presidentStudent;
	}

	public Set<StudentDefense> getSecretaryStudent() {
		return secretaryStudent;
	}

	public void setSecretaryStudent(Set<StudentDefense> secretaryStudent) {
		this.secretaryStudent = secretaryStudent;
	}

	public Set<StudentDefense> getAdditionalMemberStudent() {
		return additionalMemberStudent;
	}

	public void setAdditionalMemberStudent(
			Set<StudentDefense> additionalMemberStudent) {
		this.additionalMemberStudent = additionalMemberStudent;
	}

	public Set<StudentDefense> getSupervisorStudent() {
		return supervisorStudent;
	}

	public void setSupervisorStudent(Set<StudentDefense> supervisorStudent) {
		this.supervisorStudent = supervisorStudent;
	}

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
