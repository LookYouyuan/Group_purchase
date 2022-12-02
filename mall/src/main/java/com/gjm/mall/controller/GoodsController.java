package com.gjm.mall.controller;

import com.gjm.mall.entity.Rating;
import com.gjm.mall.service.GoodsService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class GoodsController {
    @Resource
    private GoodsService goodsService;
    @RequestMapping("toDetails")
    public String toDetails(int user_id,int goods_id , int rating_id, ModelMap modelMap){
        modelMap.put("goods",this.goodsService.queryGoodsById(goods_id));
        if(rating_id != 0){
            modelMap.put("rating",this.goodsService.queryRatingByGoodsId(goods_id));
        }
        modelMap.put("rating_id",rating_id);
        modelMap.put("user_id",user_id);
        return "commodityDetails";
    }

    @RequestMapping("doUpdateRating")
    public String doUpdateRating(Rating rating){
        this.goodsService.updateRating(rating);
        return null;
    }

    @RequestMapping("toRecommend")
    public String toRecommend(int user_id, int type_id, ModelMap modelMap){
        modelMap.put("user_id",user_id);
        modelMap.put("goodss",this.goodsService.queryGoodsByTypeId(type_id));
        return "recommend";
    }

    @RequestMapping("toAddCart")
    public String toAddCart(int user_id,int goods_id, ModelMap modelMap){
        modelMap.put("user_id",user_id);
        modelMap.put("goods",this.goodsService.queryGoodsById(goods_id));
        return "cart/addCart";
    }
}
