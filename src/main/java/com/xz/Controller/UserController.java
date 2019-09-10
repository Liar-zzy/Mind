package com.xz.Controller;


import com.xz.pojo.User;
import com.xz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired//自动注入&获取对象
    private UserService userService;

    @RequestMapping("/login")
    @ResponseBody
    public Map<String,String> login(@RequestBody User user,HttpSession session){
        Map<String,String> map=new HashMap<>();
        System.out.println("传入的 User :   "+user.getUsername()+"   pwd:    "+user.getPassword()  );
        user=userService.get(user);
        if(user!=null){
            System.out.println("login success");
            session.setAttribute("SESSION_USER", user);

            map.put("logincheck","success");

            //成功后 传回角色信息
            map.put("role",user.getRole());
        }
        else{
            map.put("logincheck","failure");
        }
        return map;
    }

//    @RequestMapping("/register")
//    public String register(@ModelAttribute("user") User user, HttpSession session) {
//        User u = new User();
//
//        System.out.println(user.getPassword() + user.getAddr() + user.getTel());
//
//        u.setUsername(user.getUsername());
//        u.setPassword(user.getPassword());
//        u.setTel(user.getTel());
//        u.setRole(user.getRole());
//        u.setEmail(user.getEmail());
//        u.setAddr(user.getAddr());
//
//        Date date = new Date();
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        u.setCreate_date(sdf.format(date));
//
//        Calendar cal = Calendar.getInstance();
//        cal.setTime(date);
//        cal.add(Calendar.YEAR, 1);
//        date = cal.getTime();
//        u.setEnd_date(sdf.format(date));
//
//        userService.insert_register(u);
//        System.out.println("注册成功！！！");
//        return "redirect:/jsp/login.jsp";
//    }

    @RequestMapping("/register")
    @ResponseBody
    public Map<String,String> register(@RequestBody User user){
        User u = new User();
        System.out.println(user.getPassword() + user.getAddr() + user.getTel());

        u.setUsername(user.getUsername());
        u.setPassword(user.getPassword());
        u.setTel(user.getTel());
        u.setRole(user.getRole());
        u.setEmail(user.getEmail());
        u.setAddr(user.getAddr());

        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        u.setCreateDate(sdf.format(date));

        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.YEAR, 1);
        date = cal.getTime();
        u.setEndDate(sdf.format(date));

        userService.insert_register(u);
        System.out.println("注册成功！！！");
        Map<String, String > map = new HashMap<>();
        map.put("register","success");
        return map;
    }

    //注册时检查是否出现用户名重复
    @RequestMapping("/checkname")
    @ResponseBody
    public Map<String, Integer> checkName(@RequestBody User user) {
        Map<String, Integer> map = new HashMap<>();
        System.out.println("传入的 username  "+user.getUsername());
        //表示不重名
        int code = 400;
        User u=new User();
        u = userService.selectExist(user);
        //如果 user 为空 则 用户名可用
        if (u == null) {
            //可用
            code = 2000;
        } else {
            //不可用
            code = 400;
            System.out.println("查询得到的username"+u.getUsername());
        }
        map.put("code", code);
        return map;
    }

    @RequestMapping("/getUserList")
    public String SelectAllUser(Model model){
        List<User> list;
        list = userService.selectAllUser();
        model.addAttribute("ListAllUser",list);
        for (int i = 0; i < list.size(); i++)
        {
            System.out.println(list.get(i).getCreateDate());
        }
        System.out.println("list all user");
        return "user-manager";
    }

}
