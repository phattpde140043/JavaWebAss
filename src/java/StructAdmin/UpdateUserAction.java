/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StructAdmin;

import Controller.UserDB;
import Model.User;
import java.util.Map;

/**
 *
 * @author Admin
 */
public class UpdateUserAction {

    private String id;
    private String email;
    private String password;
    private String name;
    private String phone;
    private String address;

    private final String SUCCESS = "success";
    private final String FAIL = "fail";

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

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

    public UpdateUserAction() {
    }

    public String execute() throws Exception {
        try {
            //User s = new User("U0014", "aaaa@xxxxx.x", "ThanhLam", "hihi", "1425555", "Ha Noi");
            User s = new User(id, email, password, name, phone, address);
            System.out.println("user :" + s.toString());
            boolean result = UserDB.updateUser(s);
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
