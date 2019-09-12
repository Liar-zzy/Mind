package com.xz.Controller;


import com.xz.pojo.Machine;
import com.xz.pojo.Top.MachineTop;
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
import java.util.*;

@Controller
@RequestMapping("/machine")
public class MachineController {

    @Autowired
    public MachineService machineService;

    @RequestMapping("/addMachine")
    @ResponseBody
    public Map<String,String> add_Machine(@RequestBody Machine machine){
        machine.setState(1);

        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        machine.setDistriDate((sdf.format(date)));

        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.YEAR, 1);
        date = cal.getTime();
        machine.setEndDate(sdf.format(date));

        boolean success;
        Map<String, String > map = new HashMap<>();
        success = machineService.add_machine(machine);

        if(success == true) {
            map.put("add","success");
            System.out.println("add machine success");
        }
        else {
            map.put("add","fail");
            System.out.println("add machine fail");
        }
        return map;
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

    @RequestMapping("/deleteAMachine")
    @ResponseBody
    public Map<String,String> deleteAMachine(@RequestBody Machine machine){
        boolean success;
        success = machineService.deleteAMachine(machine.getMachineId());
        if(success) {
            System.out.println("delete machine success");
        } else {
            System.out.println("delete machine fail");
        }
        Map<String, String > map = new HashMap<>();
        if(success){
            map.put("delete","success");
            System.out.println("delete machine success");
        }
        else{
            map.put("delete","fail");
            System.out.println("delete machine fail");
        }
        return map;
    }

    @RequestMapping("/updateAMachine")
    @ResponseBody
    public Map<String, String > updateAMachine(@RequestBody Machine machine){

        System.out.println(machine.getMachineId());
        System.out.println(machine.getState());
        boolean success;
        success = machineService.updateAMachine(machine);
        if(success) {
            System.out.println("update Machine success");
        } else {
            System.out.println("update Machine fail");
        }
        Map<String, String > map = new HashMap<>();
        map.put("update","success");
        return map;
    }

    //注册时检查machineId是否存在
    @RequestMapping("/checkMachineId")
    @ResponseBody
    public Map<String, Integer> checkMerchandiseId(@RequestBody Machine machine) {
        Map<String, Integer> map = new HashMap<>();
        Machine m ;
        m = machineService.checkMachine(machine);

        Integer code = 0;
        //如果 MachineId 为空 则 机器id可用
        if (m == null) {
            //可用
            code = 1;
        } else {
            //不可用
            code = 0;
            System.out.println("已存在的id以及名称"+m.getMachineId()+" "+m.getName());
        }
        map.put("IsExist", code);
        return map;
    }

    @RequestMapping("/getFixList")
    public String SelectAllFix(Model model, HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("SESSION_USER");

        List<Machine> list = machineService.selectDamageMachine();

        for (int i = 0; i < list.size(); i++)
        {
            System.out.println(list.get(i).getMachineId()+list.get(i).getPossessor());
        }
        model.addAttribute("AllDamageMachine",list);

        if(user.getRole().equals("ACE")){
            return "machine-fix";
        }
        else if(user.getRole().equals("FIX")){
            return "machine-fix-fixer";
        }
        else if(user.getRole().equals("MAC")){
            return "machine-fix-machine";
        }
        else {
            return "redirect:/jsp/.jsp";
        }
    }

    @RequestMapping("/getMachineTop")
    @ResponseBody
    public List<MachineTop> getMachineTop(){
        List<MachineTop> list = machineService.selectMachineTop();

        return list;
    }
}
