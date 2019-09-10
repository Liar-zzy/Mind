package com.xz.Controller;

import com.xz.pojo.M_merchandise;
import com.xz.service.M_merchandiseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
