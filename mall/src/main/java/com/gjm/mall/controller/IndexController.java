package com.gjm.mall.controller;
import com.gjm.mall.entity.User;
import com.gjm.mall.service.RatingService;
import com.gjm.mall.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;


@Controller
public class IndexController {
    @Resource
    private RatingService ratingService;

    @RequestMapping("login")
    public String toLogin(){
        return "login";
    }
    @RequestMapping("index")
    public String toIndex(int user_id, ModelMap modelMap) {
        modelMap.put("ratings",this.ratingService.queryRating(user_id));
        return "index";
    }
    @RequestMapping("welcome")
    public String toMain() {
        return "welcome";
    }




}
