package com.gjm.mall.controller;

import com.gjm.mall.service.RatingService;
import com.gjm.mall.service.TypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class TypeController {
    @Resource
    private TypeService typeService;
    @Resource
    private RatingService ratingService;
    @RequestMapping("queryType")
    public String queryType(int user_id,ModelMap modelMap){
        modelMap.put("ratings",this.ratingService.queryRating(user_id));
        modelMap.put("types",this.typeService.queryType());
        return "species";
    }
}
