package com.xz.Controller;

import com.xz.pojo.Top.DaySoldSumTop;
import com.xz.pojo.Top.MerchandiseSoldNumTop;
import com.xz.pojo.Top.MerchandiseTop3;
import com.xz.pojo.Order;
import com.xz.pojo.User;
import com.xz.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    public OrderService orderService;

    @RequestMapping("/addOrder")
    public String add_Order(@ModelAttribute("order") Order order, HttpSession session ){
        orderService.add_Order(order);
        return "xxx";
    }

    @RequestMapping("/getOrderList")
    public String SelectAllOrder(Model model, HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("SESSION_USER");

        List<Order> list;
        list = orderService.selectAllOrder();
        model.addAttribute("ListAllOrder",list);
        for (int i = 0; i < list.size(); i++)
        {
            System.out.println(list.get(i).getoId());
            System.out.println(list.get(i).getItemId());
            System.out.println(list.get(i).getDate());
        }
        System.out.println("list all user");

        List<MerchandiseTop3> listTop3 = orderService.get_Top3();
        model.addAttribute("ListOrderTop3",listTop3);

        if(user.getRole().equals("ACE")){
            System.out.println("data-all-admin");
            return "data-all-admin";
        }
        else if(user.getRole().equals("FIX")){
            System.out.println("data-all");
            return "redirect:/.jsp";
        }
        else if(user.getRole().equals("MAC")){
            System.out.println("data-all-machine");
            return "data-all-machine";
        }
        else {
            System.out.println("data-all-manufac");
            return "data-all-manufac";
        }
    }

    @RequestMapping("/deleteAnOrder")
    public String deleteAnOrder(){
        boolean success;
        success = orderService.deleteAnOrder(1);
        if(success == true) System.out.println("delete order success");
        else System.out.println("delete order fail");
        return "xxx";
    }

    @RequestMapping("/getMerchandiseSoldNumTop")
    public String GetMerchandiseSoldNumTop(Model model){
        List<MerchandiseSoldNumTop> list = orderService.get_MerchandiseSoldNumTop();
        model.addAttribute("ListMerchandiseSoldNumTop",list);
        return "xxx";
    }

    @RequestMapping("/getDaySoldSumTop")
    public String GetDaySoldSumTop(Model model){
        List<DaySoldSumTop> list = orderService.get_DaySoldSumTop();
        model.addAttribute("ListDaySoldSumTop",list);
        return "xxx";
    }
}
