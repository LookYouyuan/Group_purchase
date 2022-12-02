package com.gjm.business.controller;

import com.gjm.business.entity.Captain;
import com.gjm.business.entity.Goods;
import com.gjm.business.service.CaptainService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class CaptainController {
    @Resource
    private CaptainService captainService;
    public static final String SUCCESS = "redirect:queryCaptain";

    @RequestMapping("queryCaptain")
    public String queryCaptain(ModelMap modelMap){
        modelMap.put("captains", this.captainService.queryCaptain());
        return "captain/listCaptain";
    }

    @RequestMapping("toUpdateCaptain")
    public String toUpdateCaptain(int captain_id, ModelMap modelMap){
        modelMap.put("captain",this.captainService.queryCaptainById(captain_id));
        return "captain/updateCaptain";
    }

    @RequestMapping("doUpdateCaptain")
    public String doUpdateCaptain(Captain captain){
        this.captainService.updateCaptain(captain);
        return "captain/updateCaptain";
    }
    @RequestMapping("toUpdateCaptainWage")
    public String toUpdateCaptainWage(int captain_id, ModelMap modelMap){
        modelMap.put("captain",this.captainService.queryCaptainById(captain_id));
        return "captain/updateCaptainWage";
    }
    @RequestMapping("doUpdateCaptainWage")
    public String doUpdateCaptainWage(Captain captain){
        this.captainService.updateCaptainWage(captain);
        return "captain/updateCaptainWage";
    }


    @RequestMapping("toAddCaptain")
    public String toAddCaptain(){
        return "captain/addCaptain";
    }

    @RequestMapping("doAddCaptain")
    public String doAddCaptain(Captain captain){
        this.captainService.addCaptain(captain);
        return SUCCESS;
    }

}
