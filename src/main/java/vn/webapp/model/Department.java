package vn.webapp.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "departments")
public class Department {

	@Id @GeneratedValue
	@Column(name = "ID", nullable = false)
	private String id;
	
	@Column(name = "Description", nullable = false)
	private String description ;
	
	@Column(name = "Name", nullable = false)
	private String name;
	
	@Column(name = "InstituteID", nullable = false)
	private String instituteID;

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getInstituteID() {
		return instituteID;
	}

	public void setInstituteID(String instituteID) {
		this.instituteID = instituteID;
	}

	@Override
	public String toString() {
		return "Departments [id=" + id + ", description=" + description
				+ ", name=" + name + ", instituteID=" + instituteID + "]";
	}
	
}
