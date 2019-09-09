package com.xz.Controller;

import com.xz.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author xz
 */
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

    @RequestMapping("/user")
    public String userRedirect(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("SESSION_USER");
        if(user.getRole().equals("ACE")){
            return "redirect:/jsp/user-manager.jsp";
        }
        else if(user.getRole().equals("FIX")){
            return "redirect:/jsp/user-fix.jsp";
        }
        else if(user.getRole().equals("MAC")){
            return "redirect:/jsp/user-machine.jsp";
        }
        else {
            return "redirect:/jsp/user-manufac.jsp";
        }
    }

    /**
     * 用于 商品管理 商品列表的跳转
     */
    @RequestMapping("/merchandise")
    public String merchandiseRedirect(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("SESSION_USER");
        if(user.getRole().equals("ACE")){
            return "redirect:/jsp/merchandise.jsp";
        }
        else if(user.getRole().equals("FIX")){
            return "redirect:";
        }
        else if(user.getRole().equals("MAC")){
            return "redirect:/jsp/merchandise-machine.jsp";
        }
        else {
            return "redirect:/jsp/merchandise-manufac.jsp";
        }
    }

    /**
     * 用于 设备管理 设备列表 的跳转
     */
    @RequestMapping("/machine")
    public String machineRedirect(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("SESSION_USER");
        if(user.getRole().equals("ACE")){
            return "redirect:/jsp/machine.jsp";
        }
        else if(user.getRole().equals("FIX")){
            return "redirect:";
        }
        else if(user.getRole().equals("MAC")){
            return "redirect:/jsp/machine-manage.jsp";
        }
        else {
            return "redirect:/jsp/.jsp";
        }
    }

    /**
     * 用于 维修列表 的跳转
     */

    @RequestMapping("/machinefix")
    public String machinefixRedirect(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("SESSION_USER");
        if(user.getRole().equals("ACE")){
            return "redirect:/jsp/machine-fix.jsp";
        }
        else if(user.getRole().equals("FIX")){
            return "redirect:/jsp/machine-fix-fixer.jsp";
        }
        else if(user.getRole().equals("MAC")){
            return "redirect:/jsp/machine-fix-machine.jsp";
        }
        else {
            return "redirect:/jsp/.jsp";
        }
    }

    /**
     *  用于 data-all 的跳转
     */
    @RequestMapping("/dataall")
    public String dataallRedirect(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("SESSION_USER");
        if(user.getRole().equals("ACE")){
            return "redirect:/jsp/data-all-admin.jsp";
        }
        else if(user.getRole().equals("FIX")){
            return "redirect:/.jsp";
        }
        else if(user.getRole().equals("MAC")){
            return "redirect:/jsp/data-all-machine.jsp";
        }
        else {
            return "redirect:/jsp/data-all-manufac.jsp";
        }
    }

    /**
     *  用于 data-display 的跳转
     */
    @RequestMapping("/datadisplay")
    public String datadisplayRedirect(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("SESSION_USER");
        if(user.getRole().equals("ACE")){
            return "redirect:/jsp/data-display-admin.jsp";
        }
        else if(user.getRole().equals("FIX")){
            return "redirect:/.jsp";
        }
        else if(user.getRole().equals("MAC")){
            return "redirect:/jsp/data-display-machine.jsp";
        }
        else {
            return "redirect:/jsp/data-display-manufac.jsp";
        }
    }

}
