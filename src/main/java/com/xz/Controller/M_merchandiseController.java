package com.xz.Controller;

import com.xz.pojo.M_merchandise;
import com.xz.service.M_merchandiseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

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
}
