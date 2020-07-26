/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Controller.TransactionDB;
import Controller.UserDB;
import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tran phu phat
 */
public class Transaction implements Serializable{
    private String tID;
    private User us;
    private List<Order> Cart= new ArrayList<>() ;
    private boolean Status;
    private Date tDate;
    private Double Total=0.0;

    public Transaction() {
    }
            
    public Transaction(String tID, String uID, boolean Status, Date tDate) {
        this.tID = tID;
        this.us = UserDB.getUserById(uID);
        this.Status = Status;
        this.tDate = tDate;
        setTotal();
    }

    public Transaction(String uID, boolean Status, Date tDate) {
        this.tID = TransactionDB.createTransactionID();
        this.us = UserDB.getUserById(uID);
        this.Status = Status;
        this.tDate = tDate;
        setTotal();
    }
    
    

    public String gettID() {
        return tID;
    }

    public void settID(String tID) {
        this.tID = tID;
    }

    public User getUs() {
        return us;
    }

    public void setUs(User us) {
        this.us = us;
    }

    public Double getTotal() {
        return Total;
    }

    public void setTotal() {
        for (Order order : Cart) {
            this.Total+=(order.getBook().getbPrice()*order.gettQuatity()); 
        }
        
    }

    

    public List<Order> getCart() {
        return Cart;
    }

    public void setCart(List<Order> Cart) {
        this.Cart = Cart;
        
    }

    public boolean isStatus() {
        return Status;
    }

    public void setStatus(boolean Status) {
        this.Status = Status;
    }

    public Date gettDate() {
        return tDate;
    }

    public void settDate(Date tDate) {
        this.tDate = tDate;
    }

    @Override
    public String toString() {
        return "[\"" + tID + "\", \"" + us.getuName() + "\", \"" + Cart + "\", \"" + tDate + "\", \"" + Status + "\"]";
    }

}