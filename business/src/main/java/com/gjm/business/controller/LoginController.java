package com.gjm.business.controller;
import com.gjm.business.entity.Captain;
import com.gjm.business.service.CaptainService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Resource
    private CaptainService captainService;
    @RequestMapping("/")
    public String toLogin(){
        return "login";
    }
    @RequestMapping("doLogin")
    public String doLogin(Captain captain, HttpSession session, ModelMap modelMap){
        String forward = "";
        Captain login = this.captainService.login(captain);
        if(login != null){
            session.setAttribute("captain",login);
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
