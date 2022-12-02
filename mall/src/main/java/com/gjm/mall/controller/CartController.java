package com.gjm.mall.controller;

import com.gjm.mall.entity.Cart;
import com.gjm.mall.service.CartService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class CartController {
    @Resource
    private CartService cartService;
    @RequestMapping("queryCart")
    public String queryCart(int user_id, ModelMap modelMap){
        modelMap.put("cartss",this.cartService.queryCartss(user_id));
        modelMap.put("carts",this.cartService.queryCart(user_id));
        return "cart";
    }

    @RequestMapping("toUpdateCart")
    public String toUpdateCart(int cart_id, ModelMap modelMap){
        modelMap.put("cart", this.cartService.queryCartById(cart_id));
        modelMap.put("captains",this.cartService.queryCaptain());
        return "cart/updateCart";
    }

    @RequestMapping("doUpdateCart")
    public String doUpdateCart(Cart cart){
        this.cartService.updateCart(cart);
        return "cart/updateCart";
    }

    @RequestMapping("doAddCart")
    public String doAddCart(Cart cart){
        this.cartService.addCart(cart);
        return null;
    }

    /*@RequestMapping("toDetails")
    public String toDetails(){
        return "commodityDetails";
    }*/




}
