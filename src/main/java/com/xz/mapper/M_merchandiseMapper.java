package com.xz.mapper;

import com.xz.pojo.M_merchandise;
import com.xz.pojo.Merchandise;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface M_merchandiseMapper {

    int addM_merchandise(@Param("M_mer") M_merchandise m_merchandise);

    List<M_merchandise> select_allM_merchandise(@Param("machineId") int machineId);

    int delete_AM_merchandise(@Param("m_merchandise") M_merchandise m_merchandise);

    int update_AM_merchandise(@Param("updateM_merchandise") M_merchandise m_merchandise);
}
