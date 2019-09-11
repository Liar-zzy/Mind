package com.xz.Controller;


import com.xz.pojo.Machine;
import com.xz.pojo.User;
import com.xz.service.MachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/machine")
public class MachineController {

    @Autowired
    public MachineService machineService;

    @RequestMapping("/addMachine")
    public String addMachine(Machine machine, HttpSession session){

        machine.setState(1);

        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        machine.setDistriDate((sdf.format(date)));

        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.YEAR, 1);
        date = cal.getTime();
        machine.setEndDate(sdf.format(date));

        machineService.add_machine(machine);
        return "index-admin";
    }

    @RequestMapping("/getMachineList")
    public String SelectAllMachine(Model model){
        List<Machine> list;
        list = machineService.selectAllMachine();
        model.addAttribute("ListAllMachine",list);
        for (int i = 0; i < list.size(); i++)
        {
            System.out.println(list.get(i).getDistriDate());
        }
        return "machine";
    }

    @RequestMapping("/getAMachine")
    @ResponseBody
    public Machine getAMachine(HttpServletRequest request){
        System.out.println("getAMachine");

        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("SESSION_USER");

        System.out.println(user.getUsername());

        Machine machine=machineService.selectAMachine(user);
        return machine;
    }

    @RequestMapping("/deleteAMachine")
    public String deleteAMachine(){
        boolean success;
        success = machineService.deleteAMachine(1);
        if(success == true) {
            System.out.println("delete machine success");
        } else {
            System.out.println("delete machine fail");
        }
        return "xxx";
    }

    @RequestMapping("/updateAMachine")
    @ResponseBody
    public String updateAMerchandise(@RequestBody Machine machine){
        boolean success;
        success = machineService.updateAMachine(machine);
        if(success == true) {
            System.out.println("update Machine success");
        } else {
            System.out.println("update Machine fail");
        }
        return "xxx";
    }
}
