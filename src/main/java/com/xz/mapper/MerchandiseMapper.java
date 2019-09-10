package com.xz.mapper;

import com.xz.pojo.Merchandise;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MerchandiseMapper {

    int addMerchandise(@Param("mer") Merchandise merchandise);

    List<Merchandise> select_allMerchandise();
}
