package com.gjm.mall.entity;

public class Rating {

    private int id;
    private int user_id;
    private int goods_id;
    private Goods goods;
    private int rating;

    @Override
    public String toString() {
        return "Rating{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", goods_id=" + goods_id +
                ", goods=" + goods +
                ", rating=" + rating +
                '}';
    }

    public Rating() {
    }

    public Rating(int id, int user_id, int goods_id, Goods goods, int rating) {
        this.id = id;
        this.user_id = user_id;
        this.goods_id = goods_id;
        this.goods = goods;
        this.rating = rating;
    }

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }
}
