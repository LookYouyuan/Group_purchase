package com.gjm.business.controller;

import com.gjm.business.entity.Order;
import com.gjm.business.service.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class OrderController {

    @Resource
    private OrderService orderService;
    public static final String SUCCESS = "redirect:queryOrder";
    @RequestMapping("queryOrder1")
    public String queryOrder1(ModelMap modelMap){
        modelMap.put("orders", this.orderService.queryOrder1());
        return "order/listOrder1";
    }

    @RequestMapping("queryOrder2")
    public String queryOrder2(ModelMap modelMap){
        modelMap.put("orders", this.orderService.queryOrder2());
        return "order/listOrder2";
    }

    @RequestMapping("queryOrder3")
    public String queryOrder3(ModelMap modelMap){
        modelMap.put("orders", this.orderService.queryOrder3());
        return "order/listOrder3";
    }

    @RequestMapping("queryOrder4")
    public String queryOrder4(ModelMap modelMap){
        modelMap.put("orders", this.orderService.queryOrder4());
        return "order/listOrder4";
    }


    @RequestMapping("toUpdateOrder")
    public String toUpdateOrder(int order_id, ModelMap modelMap){
        modelMap.put("order",this.orderService.queryOrderById(order_id));
        return "order/updateOrder";
    }
    @RequestMapping("doUpdateOrder")
    public String doUpdateOrder(Order order){
        this.orderService.updateOrder(order);
        return null;
    }
}
