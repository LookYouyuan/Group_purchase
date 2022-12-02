package com.gjm.business.controller;

import com.gjm.business.entity.Captain;
import com.gjm.business.entity.Order;
import com.gjm.business.service.CaptainService;
import com.gjm.business.service.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class RevenueController {

    @Resource
    private CaptainService captainService;


    @RequestMapping("queryRevenue")
    public String queryRevenue(int captain_id, ModelMap modelMap){
        modelMap.put("orders", this.captainService.queryRevenue());
        modelMap.put("captain",this.captainService.queryCaptainById(captain_id));
        return "revenue/listRevenue";
    }


    @RequestMapping("doUpdateRevenue")
    public String doUpdateRevenue(Captain captain, ModelMap modelMap){
        this.captainService.updateCaptain(captain);
        modelMap.put("orders", this.captainService.queryRevenue());
        modelMap.put("captain",this.captainService.queryCaptainById(captain.getCaptain_id()));
        return "revenue/listRevenue";
    }
}
