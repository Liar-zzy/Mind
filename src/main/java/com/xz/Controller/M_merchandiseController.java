package com.xz.Controller;

import com.xz.pojo.M_merchandise;
import com.xz.service.M_merchandiseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/M_merchandise")
public class M_merchandiseController {

    @Autowired
    public M_merchandiseService m_merchandiseService;

    @RequestMapping("/addM_merchandise")
    public String add_M_merchandise(@ModelAttribute("m_merchandise")M_merchandise m_merchandise, HttpSession session){

        m_merchandiseService.add_M_merchandise(m_merchandise);
        return "index-admin";
    }

    @RequestMapping("/getM_merchandiseList")
    public String SelectAllM_merchandise(Model model){
        List<M_merchandise> list;
        list = m_merchandiseService.selectAllM_merchandise(2);
        model.addAttribute("ListAllM_merchandise",list);
        for (int i = 0; i < list.size(); i++)
        {
            System.out.println(list.get(i).getSoldNum());
        }
        return "machine";
    }

    @RequestMapping("/deleteAM_merchandise")
    public String deleteAM_merchandise(){
        boolean success;
        success = m_merchandiseService.deleteAM_merchandise(1);
        if(success == true) System.out.println("delete M_merchandise success");
        else System.out.println("delete M_merchandise fail");
        return "xxx";
    }

    @RequestMapping("/updateAM_merchandise")
    @ResponseBody
    public String updateAMerchandise(@RequestBody M_merchandise m_merchandise){
        boolean success;
        success = m_merchandiseService.updateAM_merchandise(m_merchandise);
        if(success == true) System.out.println("update M_merchandise success");
        else System.out.println("update M_merchandise fail");
        return "xxx";
    }
}
