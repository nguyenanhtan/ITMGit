package vn.webapp.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
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
