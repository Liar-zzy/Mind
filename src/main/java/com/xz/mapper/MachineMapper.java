package com.xz.mapper;

import com.xz.pojo.Machine;
import org.apache.ibatis.annotations.Param;

public interface MachineMapper {


    int addMachine(@Param("m")Machine machine);

}
