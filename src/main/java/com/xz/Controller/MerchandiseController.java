package com.xz.Controller;


import com.xz.pojo.Merchandise;
import com.xz.service.MerchandiseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

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
}
