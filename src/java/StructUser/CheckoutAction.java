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

        System.out.println("tran : " + t.toString());
        db.AddnewTransaction(t);

        Transaction n = new Transaction();
        Cart c = new Cart();

        session.put("TRANSACTION", n);
        session.put("CART", c);

        return SUCCESS;

    }

}
