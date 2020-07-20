/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StructUser;

import Model.Cart;
import Model.Order;
import com.opensymphony.xwork2.ActionContext;
import java.util.ArrayList;
import java.util.Map;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Admin
 */
public class CartAction {

    private String bid;

    private final String SUCCESS = "success";
    private final String FAIL = "fail";

    public String getBid() {
        return bid;
    }

    public void setBid(String bid) {
        this.bid = bid;
    }
    
    public CartAction() {
    }

    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        
        Cart cart = (Cart) session.get("CART");
        String cusID = (String) session.get("ID");
        
        if(cart == null) {
            cart = new Cart(cusID);
        }
        
        cart.addItemToCart(bid);
        session.put("CART", cart);
        
        System.out.println("Cart: " + cart.toString());
        
        return SUCCESS;
        
    }

}
