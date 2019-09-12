package com.xz.service.impl;

import com.xz.mapper.OrderMapper;
import com.xz.pojo.Top.DaySoldSumTop;
import com.xz.pojo.Top.MerchandiseSoldNumTop;
import com.xz.pojo.Top.MerchandiseTop3;
import com.xz.pojo.Order;
import com.xz.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("order")
public class OrderServiceImpl  implements OrderService {

    @Autowired
    public OrderMapper orderMapper;

    @Override
    public boolean add_Order(Order order) {
        int row = orderMapper.addOrder(order);
        return row == 1 ? true:false;
    }

    @Override
    public List<Order> selectAllOrder() {
        List<Order> list = orderMapper.select_allOrder();
        return list;
    }

    @Override
    public boolean deleteAnOrder(int oId) {
        int row = orderMapper.delete_AnOrder(oId);
        return row == 1 ? true:false;
    }

    @Override
    public List<MerchandiseTop3> get_Top3() {
        List<MerchandiseTop3> list = orderMapper.getTop3();
        return list;
    }

    @Override
    public List<MerchandiseSoldNumTop> get_MerchandiseSoldNumTop() {
        List<MerchandiseSoldNumTop> list = orderMapper.getMerchandiseHeat();
        return list;
    }

    @Override
    public List<DaySoldSumTop> get_DaySoldSumTop() {
        List<DaySoldSumTop> list = orderMapper.getDaySoldSumTop();
        return list;
    }
}
