package com.gjm.business.entity;

public class Order {
    private int order_id;
    private String order_name;
    private int order_cnt;
    private double order_price;
    private String order_add;
    private String order_date;
    private int order_mode;
    private int order_prove_id;
    private int order_captain_id;

    public Order() {
    }

    public Order(int order_id, String order_name, int order_cnt, double order_price, String order_add, String order_date, int order_mode, int order_prove_id, int order_captain_id) {
        this.order_id = order_id;
        this.order_name = order_name;
        this.order_cnt = order_cnt;
        this.order_price = order_price;
        this.order_add = order_add;
        this.order_date = order_date;
        this.order_mode = order_mode;
        this.order_prove_id = order_prove_id;
        this.order_captain_id = order_captain_id;
    }

    @Override
    public String toString() {
        return "Order{" +
                "order_id=" + order_id +
                ", order_name='" + order_name + '\'' +
                ", order_cnt=" + order_cnt +
                ", order_price=" + order_price +
                ", order_add='" + order_add + '\'' +
                ", order_date='" + order_date + '\'' +
                ", order_mode=" + order_mode +
                ", order_prove_id=" + order_prove_id +
                ", order_captain_id=" + order_captain_id +
                '}';
    }

    public int getOrder_captain_id() {
        return order_captain_id;
    }

    public void setOrder_captain_id(int order_captain_id) {
        this.order_captain_id = order_captain_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public String getOrder_name() {
        return order_name;
    }

    public void setOrder_name(String order_name) {
        this.order_name = order_name;
    }

    public int getOrder_cnt() {
        return order_cnt;
    }

    public void setOrder_cnt(int order_cnt) {
        this.order_cnt = order_cnt;
    }

    public double getOrder_price() {
        return order_price;
    }

    public void setOrder_price(double order_price) {
        this.order_price = order_price;
    }

    public String getOrder_add() {
        return order_add;
    }

    public void setOrder_add(String order_add) {
        this.order_add = order_add;
    }

    public String getOrder_date() {
        return order_date;
    }

    public void setOrder_date(String order_date) {
        this.order_date = order_date;
    }

    public int getOrder_mode() {
        return order_mode;
    }

    public void setOrder_mode(int order_mode) {
        this.order_mode = order_mode;
    }

    public int getOrder_prove_id() {
        return order_prove_id;
    }

    public void setOrder_prove_id(int order_prove_id) {
        this.order_prove_id = order_prove_id;
    }
}
