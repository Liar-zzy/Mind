package com.xz.mapper;

import com.xz.pojo.MerchandiseTop3;
import com.xz.pojo.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderMapper {

    int addOrder(@Param("o") Order order);

    List<Order> select_allOrder();

    int delete_AnOrder(@Param("oId") int oId);

    List<MerchandiseTop3> getTop3();

}

