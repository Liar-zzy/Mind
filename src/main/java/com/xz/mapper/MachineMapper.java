package com.xz.mapper;

import com.xz.pojo.Machine;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MachineMapper {


    int addMachine(@Param("m")Machine machine);

    List<Machine> select_allMachine();
}
