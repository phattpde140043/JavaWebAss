/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StructUser;

import Controller.TransactionDB;
import Model.Cart;
import Model.Transaction;
import com.opensymphony.xwork2.ActionContext;
import java.sql.Date;
import java.util.Calendar;
import java.util.Map;

/**
 *
 * @author Admin
 */
public class CheckoutAction {

    private final String SUCCESS = "success";
    private final String FAIL = "fail";

    public CheckoutAction() {
    }

    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        Transaction t = (Transaction) session.get("TRANSACTION");

        TransactionDB db = new TransactionDB();

        db.AddnewTransaction(t);

        String uid = (String) session.get("ID");

        Date d = new Date(Calendar.getInstance().getTime().getTime());

        Transaction n = new Transaction();
        Cart c = new Cart(uid);

        session.put("CART", c);
        session.remove("TRANSACTION");

        return SUCCESS;

    }

}
