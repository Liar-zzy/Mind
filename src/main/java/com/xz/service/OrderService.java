package com.xz.service;

import com.xz.pojo.Order;

import java.util.List;

public interface OrderService {

    boolean add_Order(Order order);

    List<Order> selectAllOrder();

    boolean deleteAnOrder(int oId);
}
