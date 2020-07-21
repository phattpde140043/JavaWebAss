/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StructUser;

import Model.Cart;
import com.opensymphony.xwork2.ActionContext;
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
        return SUCCESS;
    }
    
}
