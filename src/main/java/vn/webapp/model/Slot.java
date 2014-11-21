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
@Table(name = "slot")
public class Slot {

	@Id @GeneratedValue
	@Column(name = "ID", nullable = false)
	private String id;
	
	@Column(name = "Name", nullable = false)
	private String name ;
	
	@Column(name = "Description", nullable = false)
	private String description ;
	
	@Column(name = "Start", nullable = false)
	private String start ;
	
	@Column(name = "End", nullable = false)
	private String end ;

	@OneToMany(fetch = FetchType.EAGER, mappedBy="slot", cascade = CascadeType.ALL)
    private Set<StudentDefense> slotStudent;
	
	
	public Set<StudentDefense> getSlotStudent() {
		return slotStudent;
	}

	public void setSlotStudent(Set<StudentDefense> slotStudent) {
		this.slotStudent = slotStudent;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}
	
	
}
