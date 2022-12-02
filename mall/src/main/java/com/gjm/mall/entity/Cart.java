package com.gjm.mall.entity;

public class Cart {
    private int cart_id;
    private int cart_user_id;
    private int cart_goods_id;
    private User user;
    private Goods goods;
    private Captain captain;
    private Order order;
    private int cart_orders_id;
    private int cart_captain_id;
    private int cart_mode;

    @Override
    public String toString() {
        return "Cart{" +
                "cart_id=" + cart_id +
                ", cart_user_id=" + cart_user_id +
                ", cart_goods_id=" + cart_goods_id +
                ", user=" + user +
                ", goods=" + goods +
                ", captain=" + captain +
                ", order=" + order +
                ", cart_orders_id=" + cart_orders_id +
                ", cart_captain_id=" + cart_captain_id +
                ", cart_mode=" + cart_mode +
                '}';
    }

    public Cart() {
    }

    public Cart(int cart_id, int cart_user_id, int cart_goods_id, User user, Goods goods, Captain captain, Order order, int cart_orders_id, int cart_captain_id, int cart_mode) {
        this.cart_id = cart_id;
        this.cart_user_id = cart_user_id;
        this.cart_goods_id = cart_goods_id;
        this.user = user;
        this.goods = goods;
        this.captain = captain;
        this.order = order;
        this.cart_orders_id = cart_orders_id;
        this.cart_captain_id = cart_captain_id;
        this.cart_mode = cart_mode;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Captain getCaptain() {
        return captain;
    }

    public void setCaptain(Captain captain) {
        this.captain = captain;
    }

    public int getCart_captain_id() {
        return cart_captain_id;
    }

    public void setCart_captain_id(int cart_captain_id) {
        this.cart_captain_id = cart_captain_id;
    }

    public int getCart_id() {
        return cart_id;
    }

    public void setCart_id(int cart_id) {
        this.cart_id = cart_id;
    }

    public int getCart_user_id() {
        return cart_user_id;
    }

    public void setCart_user_id(int cart_user_id) {
        this.cart_user_id = cart_user_id;
    }

    public int getCart_goods_id() {
        return cart_goods_id;
    }

    public void setCart_goods_id(int cart_goods_id) {
        this.cart_goods_id = cart_goods_id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public int getCart_orders_id() {
        return cart_orders_id;
    }

    public void setCart_orders_id(int cart_orders_id) {
        this.cart_orders_id = cart_orders_id;
    }

    public int getCart_mode() {
        return cart_mode;
    }

    public void setCart_mode(int cart_mode) {
        this.cart_mode = cart_mode;
    }
}
