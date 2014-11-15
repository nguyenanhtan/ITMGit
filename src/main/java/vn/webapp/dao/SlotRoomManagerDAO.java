package vn.webapp.dao;

import java.util.List;

import vn.webapp.model.Room;
import vn.webapp.model.Slot;

public interface SlotRoomManagerDAO {

	void persistSlot(Slot slot);
	void updateSlot(Slot slot); 
	void deleteSlot(Slot slot);
	List<Slot> listSlots();	
	
	void persistRoom(Room slot);
	void updateRoom(Room slot); 
	void deleteRoom(Room slot);
	List<Room> listRooms();	
}
