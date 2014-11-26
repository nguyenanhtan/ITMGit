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
@Table(name = "defensesession")
public class Defensesession {

	@Id @GeneratedValue
	@Column(name = "ID", nullable = false)
	private String id;
	@Column(name = "Description", nullable = false)
	private String description ;
	
	@Column(name = "Active", nullable = false)
	private String active;

	@Column(name = "date", nullable = false)
	private String date;

	@OneToMany(fetch = FetchType.EAGER, mappedBy="session", cascade = CascadeType.ALL)
    private Set<StudentDefense> sessionIDStudent;
	
	public Set<StudentDefense> getSessionIDStudent() {
		return sessionIDStudent;
	}

	public void setSessionIDStudent(Set<StudentDefense> sessionIDStudent) {
		this.sessionIDStudent = sessionIDStudent;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	@Override
	public String toString() {
		return "Defensesession [id=" + id + ", description=" + description
				+ ", active=" + active + "]";
	}
	
	
}
