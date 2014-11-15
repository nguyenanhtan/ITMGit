package vn.webapp.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "classes")
public class Classes {

	@Id @GeneratedValue
	@Column(name = "ID", nullable = false)
	private String id;
	
	@Column(name = "Description", nullable = false)
	private String description ;
	
	@Column(name = "Name", nullable = false)
	private String name;

	@Column(name = "DepartmentID", nullable = false)
	private String depId;
	public String getDepId() {
		return depId;
	}

	public void setDepId(String depId) {
		this.depId = depId;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Classes [id=" + id + ", description=" + description + ", name="
				+ name + "]";
	}
	
}
