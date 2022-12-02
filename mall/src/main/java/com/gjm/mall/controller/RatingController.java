package com.gjm.mall.controller;


import com.gjm.mall.entity.Rating;
import com.gjm.mall.service.RatingService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class RatingController {
    @Resource
    private RatingService ratingService;
    @RequestMapping("queryRating")
    public String queryRating(int user_id, ModelMap modelMap){
        modelMap.put("ratings",this.ratingService.queryRating(user_id));
        return "index";
    }

    @RequestMapping("doAddRating")
    public String doAddRating(Rating rating){
        this.ratingService.addRating(rating);
        return null;
    }




}
