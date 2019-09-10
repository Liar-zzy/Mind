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
import java.util.List;

@Controller
@RequestMapping("/Merchandise")
public class MerchandiseController {

    @Autowired
    public MerchandiseService merchandiseService;

    @RequestMapping("/addMerchandise")
    public String add_Merchandise(@ModelAttribute("merchandise") Merchandise merchandise, HttpSession session){
        merchandiseService.add_Merchandise(merchandise);
        return "index-admin";
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
    public String deleteAMerchandise(){
        boolean success;
        success = merchandiseService.deleteAMerchandise(1);
        if(success == true) System.out.println("delete merchandise success");
        else System.out.println("delete merchandise fail");
        return "xxx";
    }

    @RequestMapping("/updateAMerchandise")
    @ResponseBody
    public String updateAMerchandise(@RequestBody Merchandise merchandise){
        boolean success;
        success = merchandiseService.updateAMerchandise(merchandise);
        if(success == true) System.out.println("update Merchandise success");
        else System.out.println("update Merchandise fail");
        return "xxx";
    }
}
