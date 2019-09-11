package com.xz.mapper;

import com.xz.pojo.Machine;
import com.xz.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MachineMapper {

    int addMachine(@Param("m")Machine machine);

    List<Machine> select_allMachine();

    int delete_AMachine(@Param("machineId") int machineId);

    int update_AMachine(@Param("updateMachine") Machine machine);
}
