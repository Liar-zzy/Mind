package com.xz.Controller;

import com.xz.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/redirectTo")
public class RedirectController {


    /**
     * 用于主页的跳转
     */
    @RequestMapping("/index")
    public String indexRedirect(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("SESSION_USER");
        if(user.getRole().equals("ACE")){
             return "redirect:/jsp/index-admin.jsp";
        }
        else if(user.getRole().equals("FIX")){
            return "redirect:/jsp/index-fix.jsp";
        }
        else if(user.getRole().equals("MAC")){
            return "redirect:/jsp/index-machine.jsp";
        }
        else {
            return "redirect:/jsp/index-manufac.jsp";
        }
    }

    /**
     * 用于 用户中心 用户管理的跳转
     */

}
