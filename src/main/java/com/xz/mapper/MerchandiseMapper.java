package com.xz.mapper;

import com.xz.pojo.Merchandise;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MerchandiseMapper {

    int addMerchandise(@Param("mer") Merchandise merchandise);

    List<Merchandise> select_allMerchandise();

    int delete_AMerchandise(@Param("merchandiseId") int merchandiseId);

    int update_AMerchandise(@Param("updateMerchandise") Merchandise merchandise);

    Merchandise getAMerchandise(@Param("getMerchandise") Merchandise merchandise);
}
