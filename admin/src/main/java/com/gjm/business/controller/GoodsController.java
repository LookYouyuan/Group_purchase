package com.gjm.business.controller;


import com.gjm.business.entity.Goods;
import com.gjm.business.service.GoodsService;
import com.gjm.business.service.TypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class GoodsController {
    @Resource
    private GoodsService goodsService;
    @Resource
    private TypeService typeService;
    public static final String SUCCESS = "redirect:queryGoods";
    @RequestMapping("queryGoods")
    public String queryGoods(ModelMap modelMap){
        modelMap.put("goodss",this.goodsService.queryGoods());
        return "goods/listGoods";
    }

    @RequestMapping("toUpdateGoods")
    public String toUpdateGoods(int goods_id,ModelMap modelMap){
        modelMap.put("types",this.typeService.queryType());
        modelMap.put("goods",this.goodsService.queryGoodsById(goods_id));
        return "goods/updateGoods";
    }

    @RequestMapping("doUpdateGoods")
    public String doUpdateGoods(Goods goods){
        this.goodsService.updateGoods(goods);
        return "goods/updateGoods";
    }

    @RequestMapping("doDeleteGoods")
    public String doDeleteGoods(int goods_id){
        this.goodsService.deleteGoods(goods_id);
        return SUCCESS;
    }

    @RequestMapping("toAddGoods")
    public String toAddGoods(ModelMap modelMap){
        modelMap.put("types",this.typeService.queryType());
        return "goods/addGoods";
    }

    @RequestMapping("doAddGoods")
    public String doAddGoods(Goods goods){
        this.goodsService.addGoods(goods);
        return SUCCESS;
    }
}
