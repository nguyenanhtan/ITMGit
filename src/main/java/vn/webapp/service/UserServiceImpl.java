/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.webapp.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import vn.webapp.dao.UserDAO;
import vn.webapp.dto.DataPage;
import vn.webapp.model.Role;
import vn.webapp.model.User;
import vn.webapp.model.Users;

@Service("userService")
public class UserServiceImpl implements UserService, UserDetailsService {

    
    private UserDAO userDAO;

    /**
     *
     * @param username
     * @return
     * @throws UsernameNotFoundException
     */
    @Autowired
    public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
    @Override
    public User loadUserByUsername(final String username) throws UsernameNotFoundException {
        Users users = null;
        try {
            users = userDAO.getByUsername(username);
            if (users != null) {
                User user = new User();
                user.setUsername(users.getUsername());
                user.setPassword(users.getPassword());
                user.setSalt(users.getSalt());
                user.setEmail(users.getEmail());

                Role role = new Role();
                role.setName(users.getRole());
                List<Role> roles = new ArrayList<Role>();
                roles.add(role);
                user.setAuthorities(roles);
                return user;
            } else {
                return null;
            }
        } catch (Exception e) {
            System.out.println("Exception: " + e.getMessage());
            return null;
        }
    }

    

	/**
     *
     * @return
     */
    @Override
    public DataPage<Users> list() {
        DataPage<Users> dataUser = new DataPage<>();
        dataUser.setData(userDAO.list());
        return dataUser;
    }

    @Override
    public Users viewDetail(String id) {
        return userDAO.viewDetail(id);
    }

    @Override
    public int removeUser(String id) {
        return userDAO.removeUser(id);
    }

    @Override
    public int saveAUser(String username, String password, String salt, String email)
    {
        return userDAO.saveAUser(username, password, salt, email);
    }
}
