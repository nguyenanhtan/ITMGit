/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.webapp.form;

/**
 *
 * @author Tonytran
 */
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

/*
 * Using a customization validator
 */
import vn.webapp.form.validators.Phone;


public class UserValidationForm {

    @Email
    private String email;
    
    @NotEmpty
    private String password;
    
    @NotEmpty
    @Size(min = 6, max = 15)
    private String newpassword;
    
    @NotEmpty
    @Size(min = 6, max = 15)
    private String username;
    
    @Phone
    private String phone;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNewpassword() {
        return newpassword;
    }

    public void setNewpassword(String newpassword) {
        this.newpassword = newpassword;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

}