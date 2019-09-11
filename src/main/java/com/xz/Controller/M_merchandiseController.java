package com.xz.Controller;

import com.xz.mapper.MachineMapper;
import com.xz.pojo.M_merchandise;
import com.xz.pojo.Machine;
import com.xz.pojo.User;
import com.xz.service.M_merchandiseService;
import com.xz.service.MachineService;
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
import java.util.*;

@Controller
@RequestMapping("/M_merchandise")
public class M_merchandiseController {

    @Autowired
    public M_merchandiseService m_merchandiseService;

    @Autowired
    public MachineService machineService;

    @RequestMapping("/addM_merchandise")
    @ResponseBody
    public Map<String,String> add_M_merchandise(@RequestBody M_merchandise m_merchandise, HttpServletRequest request){
        System.out.println("add m_merchandise");

        HttpSession session = request.getSession();

        Machine machine=(Machine) session.getAttribute("SESSION_MACHINE");
        m_merchandise.setMachineId(machine.getMachineId());

        System.out.println(m_merchandise.toString());

        m_merchandise.setSoldSum(0);
        m_merchandise.setSoldNum(0);

        System.out.println(m_merchandise.toString());

        boolean success;
        Map<String, String > map = new HashMap<>();
        success = m_merchandiseService.add_M_merchandise(m_merchandise);

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

    @RequestMapping("/getM_merchandiseList")
    public String SelectAllM_merchandise(Model model, HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("SESSION_USER");

        Machine machine=machineService.selectAMachine(user);

        System.out.println("get machine"+machine.toString());

        session.setAttribute("SESSION_MACHINE",machine);

        List<M_merchandise> list;
        list = m_merchandiseService.selectAllM_merchandise(machine.getMachineId());
        model.addAttribute("ListAllM_merchandise",list);

        return "machine-manage";
    }


    @RequestMapping("/deleteAM_merchandise")
    @ResponseBody
    public Map<String,String> deleteAM_merchandise(@RequestBody M_merchandise m_merchandise,HttpServletRequest request){
        System.out.println("delete A M_merchandise ");
        System.out.println(m_merchandise.getItemId());

        HttpSession session = request.getSession();
        Machine machine=(Machine) session.getAttribute("SESSION_MACHINE");
        m_merchandise.setMachineId(machine.getMachineId());

        boolean success;
        success = m_merchandiseService.deleteAM_merchandise(m_merchandise);
        if(success == true) {
            System.out.println("delete M_merchandise success");
        } else {
            System.out.println("delete M_merchandise fail");
        }

        Map<String, String > map = new HashMap<>();
        if(success){
            map.put("delete","success");
        }
        else{
            map.put("delete","success");
        }
        return map;
    }

    @RequestMapping("/updateAM_merchandise")
    @ResponseBody
    public Map<String,String> updateAMerchandise(@RequestBody M_merchandise m_merchandise ,HttpServletRequest request){
        HttpSession session = request.getSession();
        Machine machine=(Machine) session.getAttribute("SESSION_MACHINE");
        m_merchandise.setMachineId(machine.getMachineId());
        m_merchandise.setSoldNum(0);
        m_merchandise.setSoldSum(0);
        boolean success;

        System.out.println(m_merchandise.toString());

        success = m_merchandiseService.updateAM_merchandise(m_merchandise);
        if(success == true) {
            System.out.println("update M_merchandise success");
        } else {
            System.out.println("update M_merchandise fail");
        }

        Map<String, String > map = new HashMap<>();
        map.put("update","success");
        return map;
    }
}
