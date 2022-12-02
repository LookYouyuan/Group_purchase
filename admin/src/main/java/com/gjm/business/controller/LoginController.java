package com.gjm.business.controller;
import com.gjm.business.entity.Admin;
import com.gjm.business.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Resource
    private AdminService adminService;
    @RequestMapping("/")
    public String toLogin(){
        return "login";
    }
    @RequestMapping("doLogin")
    public String doLogin(Admin admin, HttpSession session, ModelMap modelMap){
        String forward = "";
        Admin login = this.adminService.login(admin);
        if(login != null){
            session.setAttribute("admin",login);
            forward = "index";
        }else {
            String msg = "     对不起，用户名或密码错误！";
            modelMap.put("msg",msg);
            forward = "login";
        }
        return forward;
    }


 /*   @WebServlet(name = "ExitSysServlet", urlPatterns = "/Login")
    public class ExitSysServlet extends HttpServlet {
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            HttpSession session = request.getSession();
            session.invalidate();
            request.getRequestDispatcher("Login").forward(request,response);
        }

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            this.doPost(request, response);
        }
    }*/

}
