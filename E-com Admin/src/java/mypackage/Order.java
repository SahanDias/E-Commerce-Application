/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;

/**
 *
 * @author User
 */
public class Order {
    
    private int order_id;
    private String ordername;
    private String quantity;
    private String price;
    private String paystatus;

    public Order(int order_id, String ordername, String quantity, String price, String paystatus) {
        this.order_id = order_id;
        this.ordername = ordername;
        this.quantity = quantity;
        this.price = price;
        this.paystatus = paystatus;
    }

    public Order(String ordername, String quantity, String price, String paystatus) {
        this.ordername = ordername;
        this.quantity = quantity;
        this.price = price;
        this.paystatus = paystatus;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public String getOrdername() {
        return ordername;
    }

    public void setOrdername(String ordername) {
        this.ordername = ordername;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPaystatus() {
        return paystatus;
    }

    public void setPaystatus(String paystatus) {
        this.paystatus = paystatus;
    }
    
    
    
    
}
