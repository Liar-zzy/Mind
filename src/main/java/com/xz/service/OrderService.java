package com.xz.service;

import com.xz.pojo.Top.DaySoldSumTop;
import com.xz.pojo.Top.MerchandiseSoldNumTop;
import com.xz.pojo.Top.MerchandiseTop3;
import com.xz.pojo.Order;

import java.util.List;

public interface OrderService {

    boolean add_Order(Order order);

    List<Order> selectAllOrder();

    boolean deleteAnOrder(int oId);

    List<MerchandiseTop3> get_Top3();

    List<MerchandiseSoldNumTop> get_MerchandiseSoldNumTop();

    List<DaySoldSumTop> get_DaySoldSumTop();
}
