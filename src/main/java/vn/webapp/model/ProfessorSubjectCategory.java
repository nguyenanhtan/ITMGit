package vn.webapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "professor_subject_category")
public class ProfessorSubjectCategory {

	@Id @GeneratedValue
	@Column(name = "ID", nullable = false)
	private String id;
	
	@Column(name = "ProfessorID", nullable = false)
	private String professorID ;
	
	@Column(name = "SubjectCategoryID", nullable = false)
	private String subjectCategoryID ;
	
	@Column(name = "MatchScore", nullable = false)
	private String matchScore ;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getProfessorID() {
		return professorID;
	}

	public void setProfessorID(String professorID) {
		this.professorID = professorID;
	}

	public String getSubjectCategoryID() {
		return subjectCategoryID;
	}

	public void setSubjectCategoryID(String subjectCategoryID) {
		this.subjectCategoryID = subjectCategoryID;
	}

	public String getMatchScore() {
		return matchScore;
	}

	public void setMatchScore(String matchScore) {
		this.matchScore = matchScore;
	}

	@Override
	public String toString() {
		return "(`" + professorID
				+ "`,`" + subjectCategoryID + "','"
				+ matchScore + "')";
	}
	
}
