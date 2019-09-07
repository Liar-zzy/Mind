package com.xz.mapper;

import com.xz.pojo.M_merchandise;
import org.apache.ibatis.annotations.Param;

public interface M_merchandiseMapper {

    int addM_merchandise(@Param("M_mer") M_merchandise m_merchandise);

}
