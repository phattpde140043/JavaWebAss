/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StructAdmin;

import Controller.BookDBAdmin;
import Controller.UserDB;
import Model.Book;
import Model.User;
import com.opensymphony.xwork2.ActionContext;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Admin
 */
public class NewUserAction {

    private String email;
    private String password;
    private String name;
    private String phone;
    private String address;

    private final String SUCCESS = "success";
    private final String FAIL = "fail";

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    public NewUserAction() {
    }

    public String execute() throws Exception {
        try {
            User s = new User(email, password, name, phone, address) ;
            System.out.println("user :" + s.toString());
            boolean result = UserDB.addNewUser(s);
            String URL = FAIL;
            if (result) {
                URL = SUCCESS;
            }
            return URL;
        } catch (Exception e) {
            return FAIL;
        }
    }

}
