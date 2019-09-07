package com.xz.Controller;

import com.xz.pojo.Order;
import com.xz.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

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
}
