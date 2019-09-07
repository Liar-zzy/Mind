package com.xz.Controller;


import com.xz.pojo.Machine;
import com.xz.service.MachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

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
        machine.setDistri_date(sdf.format(date));

        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.YEAR, 1);
        date = cal.getTime();
        machine.setEnd_date(sdf.format(date));

        machineService.add_machine(machine);
        return "index-admin";
    }
}
