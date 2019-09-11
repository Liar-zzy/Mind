package com.xz.Controller;


import com.xz.pojo.Merchandise;
import com.xz.pojo.User;
import com.xz.service.MerchandiseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/Merchandise")
public class MerchandiseController {

    @Autowired
    public MerchandiseService merchandiseService;

    @RequestMapping("/addMerchandise")
    @ResponseBody
    public Map<String,String> add_Merchandise(@RequestBody Merchandise merchandise){

        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        merchandise.setDate(sdf.format(date));

        boolean success;
        Map<String, String > map = new HashMap<>();
        success = merchandiseService.add_Merchandise(merchandise);

        if(success == true) {
            map.put("add","success");
            System.out.println("add Merchandise success");
        }
        else {
            map.put("add","fail");
            System.out.println("add Merchandise fail");
        }
        return map;
    }

    @RequestMapping("/getAllMerchandise")
    public String SelectAllMerchandise(Model model, HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("SESSION_USER");

        List<Merchandise> list;
        list = merchandiseService.selectAllMerchandise();
        model.addAttribute("ListAllMerchandise",list);

        System.out.println("GET ALL MERCHANDISE ");

        for (int i = 0; i < list.size(); i++)
        {
            System.out.println(list.get(i).getManufactureId()+list.get(i).getDate());
        }

        if(user.getRole().equals("ACE")){
            System.out.println("merchandise");
            return "merchandise";
        }
        else if(user.getRole().equals("FIX")){
            return "redirect:";
        }
        else if(user.getRole().equals("MAC")){
            System.out.println("merchandise-machine");
            return "merchandise-machine";
        }
        else {
            System.out.println("merchandise-manufac");
            return "merchandise-manufac";
        }
    }

    @RequestMapping("/deleteAMerchandise")
    @ResponseBody
    public Map<String,String> deleteAMerchandise(@RequestBody Merchandise merchandise){
        System.out.println("delete A Merchandise");
        boolean success;
        success = merchandiseService.deleteAMerchandise(merchandise.getMerchandiseId());
        Map<String, String > map = new HashMap<>();
        if(success){
            map.put("delete","success");
            System.out.println("delete merchandise success");
        }
        else{
            map.put("delete","fail");
            System.out.println("delete merchandise fail");
        }
        return map;
    }

    @RequestMapping("/updateAMerchandise")
    @ResponseBody
    public Map<String,String> updateAMerchandise(@RequestBody Merchandise merchandise){
        System.out.println("update A User ");
        System.out.println(merchandise.getMerchandiseId()+"   "+merchandise.getManufactureId()
                +"   "+merchandise.getPrice()+"   "+merchandise.getInventory()+"  "+merchandise.getName());

        boolean success;
        success = merchandiseService.updateAMerchandise(merchandise);
        if(success == true) System.out.println("update Merchandise success");
        else System.out.println("update Merchandise fail");
        Map<String, String > map = new HashMap<>();
        map.put("update","success");
        return map;
    }

    //注册时检查MerchandiseId是否存在
    @RequestMapping("/checkMerchandiseId")
    @ResponseBody
    public Map<String, Integer> checkMerchandiseId(@RequestBody Merchandise merchandise) {
        Map<String, Integer> map = new HashMap<>();
        Merchandise m = new Merchandise();
        m = merchandiseService.checkMerchandise(merchandise);

        Integer code = 0;
        //如果 MerchandiseId 为空 则 用户名可用
        if (m == null) {
            //可用
            code = 1;
        } else {
            //不可用
            code = 0;
            System.out.println("已存在的id以及名称"+m.getMerchandiseId()+" "+m.getName());
        }
        map.put("IsExist", code);
        return map;
    }
}
