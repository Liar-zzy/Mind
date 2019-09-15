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
    @RequestMapping("/login")
    public String login(){
        return "redirect:/jsp/login.jsp";
    }


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
            //return "redirect:/jsp/user-manager.jsp";
            return "redirect:/user/getUserList";
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
            System.out.println("merchandise Redirect + ACE");
            return "redirect:/Merchandise/getAllMerchandise";
        }
        else if(user.getRole().equals("FIX")){
            System.out.println("merchandise Redirect + FIX");
            return "redirect:";
        }
        else if(user.getRole().equals("MAC")){
            System.out.println("merchandise Redirect + MAC");

            return "redirect:/Merchandise/getAllMerchandise";
        }
        else {

            System.out.println("merchandise Redirect + CH");
            return "redirect:/Merchandise/getAllMerchandise";
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
            return "redirect:/machine/getMachineList";
        }
        else if(user.getRole().equals("FIX")){
            return "redirect:";
        }
        else if(user.getRole().equals("MAC")){
            return "redirect:/M_merchandise/getM_merchandiseList";
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
            return "redirect:/machine/getFixList";
        }
        else if(user.getRole().equals("FIX")){
            return "redirect:/machine/getFixList";
        }
        else if(user.getRole().equals("MAC")){
            return "redirect:/machine/getFixList";
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
            return "redirect:/order/getOrderList";
        }
        else if(user.getRole().equals("FIX")){
            return "redirect:/.jsp";
        }
        else if(user.getRole().equals("MAC")){
            return "redirect:/order/getOrderList";
        }
        else {
            return "redirect:/order/getOrderList";
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
