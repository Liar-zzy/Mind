package com.xz.mapper;

import com.xz.pojo.Top.DaySoldSumTop;
import com.xz.pojo.Top.MerchandiseSoldNumTop;
import com.xz.pojo.Top.MerchandiseTop3;
import com.xz.pojo.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderMapper {

    int addOrder(@Param("o") Order order);

    List<Order> select_allOrder();

    int delete_AnOrder(@Param("oId") int oId);

    List<MerchandiseTop3> getTop3();

    List<MerchandiseSoldNumTop> getMerchandiseHeat();

    List<DaySoldSumTop> getDaySoldSumTop();
}

