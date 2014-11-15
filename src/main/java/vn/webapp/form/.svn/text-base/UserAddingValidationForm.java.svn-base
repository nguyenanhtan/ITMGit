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
import vn.webapp.form.validators.FieldMatch;


@FieldMatch.List({
        @FieldMatch(first = "password", second = "confpassword", errorMessage = "The password and confirm must be match"),
})
public class UserAddingValidationForm {

    @Email
    private String email;
    
    @NotEmpty
    private String password;
    
    @NotEmpty
    @Size(min = 6, max = 15)
    private String confpassword;
    
    @NotEmpty
    @Size(min = 6, max = 15)
    private String username;

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

    public String getConfpassword() {
        return confpassword;
    }

    public void setConfpassword(String confpassword) {
        this.confpassword = confpassword;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    
}