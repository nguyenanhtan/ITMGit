package vn.webapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.webapp.dao.SlotRoomManagerDAO;
import vn.webapp.model.Room;
import vn.webapp.model.Slot;

@Service("SlotRoomManagerService")
public class SlotRoomManagerServiceImpl implements SlotRoomManagerService{

	private SlotRoomManagerDAO slotRoomManagerDAO;
	@Autowired
	public void setSlotRoomManagerDAO(SlotRoomManagerDAO slotRoomManagerDAO) {
		this.slotRoomManagerDAO = slotRoomManagerDAO;
	}
	
	
	@Override
	@Transactional
	public void persistSlot(Slot slot) {
		// TODO Auto-generated method stub
		slotRoomManagerDAO.persistSlot(slot);
	}
	@Override
	@Transactional
	public void updateSlot(Slot slot) {
		// TODO Auto-generated method stub
		slotRoomManagerDAO.updateSlot(slot);
	}
	@Override
	@Transactional
	public void deleteSlot(Slot slot) {
		// TODO Auto-generated method stub
		slotRoomManagerDAO.deleteSlot(slot);
	}
	@Override
	@Transactional
	public List<Slot> listSlots() {
		// TODO Auto-generated method stub
		return slotRoomManagerDAO.listSlots();
	}
	@Override
	@Transactional
	public void persistRoom(Room slot) {
		// TODO Auto-generated method stub
		slotRoomManagerDAO.persistRoom(slot);
	}
	@Override
	@Transactional
	public void updateRoom(Room slot) {
		// TODO Auto-generated method stub
		slotRoomManagerDAO.updateRoom(slot);
	}
	@Override
	@Transactional
	public void deleteRoom(Room slot) {
		// TODO Auto-generated method stub
		slotRoomManagerDAO.deleteRoom(slot);
	}
	@Override
	@Transactional
	public List<Room> listRooms() {
		// TODO Auto-generated method stub
		return slotRoomManagerDAO.listRooms();
	}
	
}
