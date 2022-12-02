package com.gjm.business.controller;

import com.gjm.business.service.TypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class TypeController {

    @Resource
    private TypeService typeService;
    @RequestMapping("queryType")
    public String queryType(ModelMap modelMap){
        modelMap.put("types",this.typeService.queryType());
        return "type/listType";
    }
}
