/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.webapp.service;

import org.springframework.security.core.userdetails.UsernameNotFoundException;
import vn.webapp.dto.DataPage;
import vn.webapp.model.User;
import vn.webapp.model.Users;

public interface UserService {

    public User loadUserByUsername(final String username) throws UsernameNotFoundException;

    public DataPage<Users> list();
    
    public Users viewDetail(String id);
    
    public int removeUser(String id);
    
    public int saveAUser(String username, String password, String salt, String email);
    
}
