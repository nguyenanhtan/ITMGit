package vn.webapp.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.webapp.model.Department;
import vn.webapp.model.Room;
import vn.webapp.model.Slot;

@Repository("SlotRoomManagerDAO")
public class SlotRoomManagerDAOImpl implements SlotRoomManagerDAO{

	public SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public void persistSlot(Slot slot) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(slot);
	}

	@Override
	public void updateSlot(Slot slot) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(slot);
	}

	@Override
	public void deleteSlot(Slot slot) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(slot);
	}

	@Override
	public List<Slot> listSlots() {
		// TODO Auto-generated method stub
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM slot");
		q.addEntity(Slot.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}

	@Override
	public void persistRoom(Room slot) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(slot);
	}

	@Override
	public void updateRoom(Room slot) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(slot);
	}

	@Override
	public void deleteRoom(Room slot) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(slot);
	}

	@Override
	public List<Room> listRooms() {
		// TODO Auto-generated method stub
		SQLQuery q = sessionFactory.getCurrentSession().createSQLQuery("SELECT * FROM room");
		q.addEntity(Room.class);
//		sessionFactory.getCurrentSession().getTransaction().commit();
		return q.list();
	}

	
}
