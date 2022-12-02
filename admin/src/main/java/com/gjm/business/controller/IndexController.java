package com.gjm.business.controller;
import com.gjm.business.entity.Admin;
import com.gjm.business.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;


@Controller
public class IndexController {

    @Resource
    private AdminService adminService;

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
    public String updatePassword(String admin_name ,ModelMap modelMap){
        modelMap.put("admin_name", admin_name );
        return "updatePassword";
    }
    @RequestMapping("doUpdatePassword")
    public String doUpdatePassword(Admin admin, HttpSession session, ModelMap modelMap){
        String forward="";
        int updatePassword = this.adminService.updatePassword(admin);
        if(updatePassword != 0){
            session.setAttribute("admin",updatePassword);
            forward = "login";
        }else {
            String msg = "对不起，修改密码失败！";
            modelMap.put("msg",msg);
            forward = "updatePassword";
        }
        return forward;
    }


}
