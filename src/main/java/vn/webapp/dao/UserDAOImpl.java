/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.webapp.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import vn.webapp.model.Users;

@Repository("userDAO")
@SuppressWarnings({"unchecked", "rawtypes"})
@Transactional
public class UserDAOImpl extends BaseDao implements UserDAO {

    
    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/**
     *
     * @param username
     * @return
     */
    @Override
    public Users getByUsername(String username) {
        try {
            begin();
            Criteria criteria = getSession().createCriteria(Users.class);
            criteria.add(Restrictions.eq("username", username));
            Users user = (Users) criteria.uniqueResult();
            commit();
            return user;
        } catch (HibernateException e) {
            e.printStackTrace();
            rollback();
            close();
            return null;
        } finally {
            flush();
            close();
        }
    }

    /**
     *
     * @return
     */
    @Override
    public List<Users> list() {
        try {
            begin();
            Criteria criteria = getSession().createCriteria(Users.class);
            criteria.setMaxResults(10);
            criteria.setFirstResult(0);
            List<Users> users = criteria.list();
            commit();
            return users;
        } catch (HibernateException e) {
            e.printStackTrace();
            rollback();
            close();
            return null;
        } finally {
            flush();
            close();
        }
    }

    @Override
    public Users viewDetail(String id) {
        Query q = sessionFactory.getCurrentSession().createQuery(
                "from Users u where u.id = '" + id + "'");
        return (Users) q.uniqueResult();
    }

    @Override
    public int removeUser(String id) {
        Query query = sessionFactory.getCurrentSession().createQuery(
                "delete from Users u where u.id ='" + id + "'");
        int result = query.executeUpdate();
        return result;
    }

    @Override
    public int saveAUser(String username, String password, String salt, String email) {
        try {
            // create a mysql database connection
            String myDriver = "com.mysql.jdbc.Driver";
            String myUrl = "jdbc:mysql://localhost:3306/timetabling";
            Class.forName(myDriver);
            Connection conn = DriverManager.getConnection(myUrl, "root", "");

            // the mysql insert statement
            String query = "insert into users (username, password, salt, email)"
                    + " values (?, ?, ?, ?)";

            // create the mysql insert preparedstatement
            PreparedStatement preparedStmt = conn.prepareStatement(query);
            preparedStmt.setString(1, username);
            preparedStmt.setString(2, password);
            preparedStmt.setString(3, salt);
            preparedStmt.setString(4, email);

            // execute the preparedstatement
            preparedStmt.execute();

            conn.close();
            return 1;
        } catch (Exception e) {
            System.err.println("Got an exception!");
            System.err.println(e.getMessage());
            return 0;
        }
    }
}
