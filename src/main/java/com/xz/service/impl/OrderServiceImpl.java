package com.xz.service.impl;

import com.xz.mapper.OrderMapper;
import com.xz.pojo.Order;
import com.xz.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("order")
public class OrderServiceImpl  implements OrderService {

    @Autowired
    public OrderMapper orderMapper;

    @Override
    public boolean add_Order(Order order) {
        int row = orderMapper.addOrder(order);
        return row == 1 ? true:false;
    }
}
