package com.xz.service.impl;

import com.xz.mapper.MachineMapper;
import com.xz.pojo.Machine;
import com.xz.service.MachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("machineService")
public class MachineServiceImpl implements MachineService {

    @Autowired
    public MachineMapper machineMapper;

    @Override
    public boolean add_machine(Machine machine) {

        int suc = machineMapper.addMachine(machine);
        return suc == 1 ? true:false;
    }
}
