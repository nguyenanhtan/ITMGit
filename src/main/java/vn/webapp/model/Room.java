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
@Table(name = "room")
public class Room {

	@Id @GeneratedValue
	@Column(name = "ID", nullable = false)
	private String id;
	
	@Column(name = "Name", nullable = false)
	private String name ;
	
	@Column(name = "Description", nullable = false)
	private String description ;
	
	@Column(name = "Capacity", nullable = false)
	private String capacity ;

	@OneToMany(fetch = FetchType.EAGER, mappedBy="room", cascade = CascadeType.ALL)
    private Set<StudentDefense> roomStudent;
	
	public Set<StudentDefense> getRoomStudent() {
		return roomStudent;
	}

	public void setRoomStudent(Set<StudentDefense> roomStudent) {
		this.roomStudent = roomStudent;
	}

	public String getCapacity() {
		return capacity;
	}

	public void setCapacity(String capacity) {
		this.capacity = capacity;
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
}
