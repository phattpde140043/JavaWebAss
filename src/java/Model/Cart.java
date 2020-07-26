/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Controller.BookDB;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author tran phu phat
 */
public class Cart implements Serializable {

    private String customerId;
    private Map<String, Integer> items;

    public Cart() {
    }

    public Cart(String customerId, Map<String, Integer> items) {
        this.customerId = customerId;
        this.items = items;
    }

    public Cart(String customerId) {
        this.customerId = customerId;
    }
    
    

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public Map<String, Integer> getItems() {
        return items;
    }
    
    @Override
    public String toString() {
        return "" + customerId + " : " + items.toString() + "";
    }
    
    public void addItemToCart(String bId) {
        if(this.items == null){
            this.items = new HashMap<>();
        }
        
        int quantity = 1;
        if(this.items.containsKey(bId)) {
            quantity = this.items.get(bId) + 1;
        }
        
        this.items.put(bId, quantity);
    }
    
    public void removeItemFromCart(String bId) {
        if(this.items == null){
           return;
        }
        
        if(this.items.containsKey(bId)) {
            this.items.remove(bId);
            if(this.items.isEmpty()) {
                this.items = null;
            }
        }
    }

}
