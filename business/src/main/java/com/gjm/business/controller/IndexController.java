package com.gjm.business.controller;
import com.gjm.business.entity.Captain;
import com.gjm.business.service.CaptainService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;


@Controller
public class IndexController {

    @Resource
    private CaptainService captainService;

    @RequestMapping("login")
    public String toLogin(){
        return "login";
    }

    @RequestMapping("index")
    public String toIndex() {
        return "index";
    }

    @RequestMapping("welcome")
    public String toMain() {
        return "welcome";
    }

    @RequestMapping("updatePassword")
    public String updatePassword(String captain_name ,ModelMap modelMap){
        modelMap.put("captain_name", captain_name );
        return "updatePassword";
    }
    @RequestMapping("doUpdatePassword")
    public String doUpdatePassword(Captain captain,HttpSession session,ModelMap modelMap){
        String forward="";
        int updatePassword = this.captainService.updatePassword(captain);
        if(updatePassword != 0){
            session.setAttribute("captain",updatePassword);
            forward = "login";
        }else {
            String msg = "对不起，修改密码失败！";
            modelMap.put("msg",msg);
            forward = "updatePassword";
        }
        return forward;
    }


}
