package com.gjm.business.entity;

public class Goods {
    private int goods_id;
    private String goods_name;
    private String goods_img;
    private double goods_price;
    private String goods_explain;
    private int goods_cnt;
    private int goods_species;
    private Type type;
    private String goods_wage;

    public Goods() {
    }

    public Goods(int goods_id, String goods_name, String goods_img, double goods_price, String goods_explain, int goods_cnt, int goods_species, Type type, String goods_wage) {
        this.goods_id = goods_id;
        this.goods_name = goods_name;
        this.goods_img = goods_img;
        this.goods_price = goods_price;
        this.goods_explain = goods_explain;
        this.goods_cnt = goods_cnt;
        this.goods_species = goods_species;
        this.type = type;
        this.goods_wage = goods_wage;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public String getGoods_img() {
        return goods_img;
    }

    public void setGoods_img(String goods_img) {
        this.goods_img = goods_img;
    }

    public double getGoods_price() {
        return goods_price;
    }

    public void setGoods_price(double goods_price) {
        this.goods_price = goods_price;
    }

    public String getGoods_explain() {
        return goods_explain;
    }

    public void setGoods_explain(String goods_explain) {
        this.goods_explain = goods_explain;
    }

    public int getGoods_cnt() {
        return goods_cnt;
    }

    public void setGoods_cnt(int goods_cnt) {
        this.goods_cnt = goods_cnt;
    }

    public int getGoods_species() {
        return goods_species;
    }

    public void setGoods_species(int goods_species) {
        this.goods_species = goods_species;
    }

    public String getGoods_wage() {
        return goods_wage;
    }

    public void setGoods_wage(String goods_wage) {
        this.goods_wage = goods_wage;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "goods_id=" + goods_id +
                ", goods_name='" + goods_name + '\'' +
                ", goods_img='" + goods_img + '\'' +
                ", goods_price=" + goods_price +
                ", goods_explain='" + goods_explain + '\'' +
                ", goods_cnt=" + goods_cnt +
                ", goods_species=" + goods_species +
                ", type=" + type +
                ", goods_wage='" + goods_wage + '\'' +
                '}';
    }
}
