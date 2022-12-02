package com.gjm.business.controller;

import com.gjm.business.entity.Cart;
import com.gjm.business.entity.Order;
import com.gjm.business.service.OrderService;
import com.gjm.business.service.SingleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class SingleController {
    @Resource
    private SingleService singleService;
    @Resource
    private OrderService orderService;


    @RequestMapping("queryListSingle")
    public String queryListSingle(int order_id, ModelMap modelMap){
        modelMap.put("carts",singleService.queryListSingle(order_id));
        return "single/OrdertoSingle";
    }

    @RequestMapping("querySingle")
    public String querySingle(int captain_id, ModelMap modelMap){
        modelMap.put("carts",this.singleService.querySingle(captain_id));
        return "single/listSingle";
    }

    @RequestMapping("queryStoO")
    public String queryStoO(int captain_id, ModelMap modelMap){
        modelMap.put("carts",this.singleService.querySingle(captain_id));
        return "single/listStoO";
    }

    @RequestMapping("toUpdateSingle")
    public String toUpdateSingle(int cart_id, ModelMap modelMap){
        modelMap.put("cart",this.singleService.querySingleById(cart_id));
        return "single/updateSingle";
    }

    @RequestMapping("toUpdateCartOrderId")
    public String toUpdateCartOrderId(int cart_id ,ModelMap modelMap){
        modelMap.put("orders",this.orderService.queryOrder1());
        modelMap.put("cart",this.singleService.querySingleById(cart_id));
        return "single/updateCartOrderId";
    }

    @RequestMapping("doUpdateSingle")
    public String doUpdateSingle(Cart cart){
        this.singleService.updateSingle(cart);
        return null;
    }

    @RequestMapping("toAddOrder")
    public String toAddOrder(int cart_id, int captain_id, ModelMap modelMap){
        modelMap.put("cart",this.singleService.queryAllSingleById(cart_id,captain_id));
        return "single/addOrder";
    }

    @RequestMapping("doUpdateCartOrderId")
    public String doUpdateCartOrderId(Cart cart){
        this.singleService.updateCartOrderId(cart);
        return null;
    }



}
