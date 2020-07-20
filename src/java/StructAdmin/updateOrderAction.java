/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StructAdmin;

import Controller.TransactionDB;
import Model.Book;
import Model.Order;
import Model.Transaction;
import com.opensymphony.xwork2.ActionContext;
import java.sql.Date;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

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
