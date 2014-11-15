package vn.webapp.service;

import java.util.List;

import vn.webapp.model.Room;
import vn.webapp.model.Slot;

public interface SlotRoomManagerService {

	void persistSlot(Slot slot);
	void updateSlot(Slot slot); 
	void deleteSlot(Slot slot);
	List<Slot> listSlots();	
	
	void persistRoom(Room slot);
	void updateRoom(Room slot); 
	void deleteRoom(Room slot);
	List<Room> listRooms();	
}
