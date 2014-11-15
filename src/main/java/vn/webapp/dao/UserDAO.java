/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.webapp.dao;

import java.util.List;
import vn.webapp.model.Users;

public interface UserDAO {

    public Users getByUsername(String username);

    public List<Users> list();
    
    public Users viewDetail(String id);
    
    /**
     *
     * @param id
     * @return
     */
    public int removeUser(String id);
    
    public int saveAUser(String username, String password, String salt, String email);
}
