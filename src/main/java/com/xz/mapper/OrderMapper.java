package com.xz.mapper;

import com.xz.pojo.Order;
import org.apache.ibatis.annotations.Param;

public interface OrderMapper {

    int addOrder(@Param("o") Order order);
}
