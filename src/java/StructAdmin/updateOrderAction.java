/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StructAdmin;

import Controller.TransactionDB;

/**
 *
 * @author Admin
 */
public class updateOrderAction {

    private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    
    
    private final String SUCCESS = "success";
    private final String FAIL = "fail";

    public updateOrderAction() {
    }

    public String execute() throws Exception {
        try {
            TransactionDB db = new TransactionDB();
            boolean result = db.ChangeStatus(id);
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
