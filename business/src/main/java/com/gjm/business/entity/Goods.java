package com.gjm.business.entity;

public class Goods {
    private Integer goods_id;
    private String goods_name;
    private String goods_img;
    private String goods_explain;
    private Double goods_price;
    private Integer goods_cnt;
    private String goods_species;
    private Double goods_wage;

    @Override
    public String toString() {
        return "Goods{" +
                "goods_id=" + goods_id +
                ", goods_name='" + goods_name + '\'' +
                ", goods_img='" + goods_img + '\'' +
                ", goods_explain='" + goods_explain + '\'' +
                ", goods_price=" + goods_price +
                ", goods_cnt=" + goods_cnt +
                ", goods_species='" + goods_species + '\'' +
                ", goods_wage=" + goods_wage +
                '}';
    }

    public Goods() {
    }

    public Goods(Integer goods_id, String goods_name, String goods_img, String goods_explain, Double goods_price, Integer goods_cnt, String goods_species, Double goods_wage) {
        this.goods_id = goods_id;
        this.goods_name = goods_name;
        this.goods_img = goods_img;
        this.goods_explain = goods_explain;
        this.goods_price = goods_price;
        this.goods_cnt = goods_cnt;
        this.goods_species = goods_species;
        this.goods_wage = goods_wage;
    }

    public Double getGoods_wage() {
        return goods_wage;
    }

    public void setGoods_wage(Double goods_wage) {
        this.goods_wage = goods_wage;
    }

    public Integer getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(Integer goods_id) {
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

    public String getGoods_explain() {
        return goods_explain;
    }

    public void setGoods_explain(String goods_explain) {
        this.goods_explain = goods_explain;
    }

    public Double getGoods_price() {
        return goods_price;
    }

    public void setGoods_price(Double goods_price) {
        this.goods_price = goods_price;
    }

    public Integer getGoods_cnt() {
        return goods_cnt;
    }

    public void setGoods_cnt(Integer goods_cnt) {
        this.goods_cnt = goods_cnt;
    }

    public String getGoods_species() {
        return goods_species;
    }

    public void setGoods_species(String goods_species) {
        this.goods_species = goods_species;
    }
}
