package com.xz.mapper;

import com.xz.pojo.Merchandise;
import org.apache.ibatis.annotations.Param;

public interface MerchandiseMapper {

    int addMerchandise(@Param("mer") Merchandise merchandise);

}
