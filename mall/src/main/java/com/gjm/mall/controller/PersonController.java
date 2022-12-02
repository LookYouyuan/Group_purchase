package com.gjm.mall.controller;

import com.gjm.mall.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class PersonController {
    @Resource
    private UserService userService;
    @RequestMapping("queryPerson")
    public String queryPerson(int user_id, ModelMap modelMap){
        modelMap.put("user", this.userService.queryUserById(user_id));
        return "personnal";
    }
}
