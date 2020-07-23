/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StructUser;

import Controller.BookDB;
import Model.Book;
import Model.Cart;
import Model.Order;
import Model.Transaction;
import com.opensymphony.xwork2.ActionContext;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Map;

/**
 *
 * @author Admin
 */
public class RemoveCartAction {
    
    private String bid;

    private final String SUCCESS = "success";
    private final String FAIL = "fail";

    public String getBid() {
        return bid;
    }

    public void setBid(String bid) {
        this.bid = bid;
    }
    
    public RemoveCartAction() {
    }
    
    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        
        Cart cart = (Cart) session.get("CART");
        
        if(cart != null) {
            System.out.println("remove + " + bid);
            cart.removeItemFromCart(bid);
            session.put("CART", cart);
        }
        
        //set transaction
        ArrayList<Book> bl = new ArrayList<Book>();
        ArrayList<Integer> quantity = new ArrayList<Integer>();
            if (cart != null) {
                Map<String, Integer> items = cart.getItems();

                if (items != null) {
                    for (String bid : items.keySet()) {
                        bl.add(BookDB.getById(bid));
                    }
                }

                if (items != null) {
                    for (int value : items.values()) {
                        quantity.add(value);
                    }
                }
            }
            
        Date d = new Date(Calendar.getInstance().getTime().getTime());
        Transaction t = new Transaction(cart.getCustomerId(), false, d);

        ArrayList<Order> order = new ArrayList<>();
        for (int i = 0; i < bl.size(); i++) {
            Order o = new Order(bl.get(i).getbId(), quantity.get(i));
            order.add(o);
        }
        t.setCart(order);
        session.put("TRANSACTION", t);
        
        return SUCCESS;
    }
    
}
