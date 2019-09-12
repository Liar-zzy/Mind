package com.xz.service.impl;

import com.xz.mapper.MachineMapper;
import com.xz.pojo.Machine;
import com.xz.pojo.Top.MachineTop;
import com.xz.pojo.User;
import com.xz.service.MachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("machineService")
public class MachineServiceImpl implements MachineService {

    @Autowired
    public MachineMapper machineMapper;

    @Override
    public boolean add_machine(Machine machine) {

        int suc = machineMapper.addMachine(machine);
        return suc == 1 ? true:false;
    }

    @Override
    public List<Machine> selectAllMachine() {
        List<Machine> list = machineMapper.select_allMachine();
        return list;
    }

    @Override
    public boolean deleteAMachine(int machineId) {
        int row = machineMapper.delete_AMachine(machineId);
        return row == 1 ? true:false;
    }

    @Override
    public boolean updateAMachine(Machine machine) {
        int row = machineMapper.update_AMachine(machine);
        return row == 1 ? true:false;
    }

    @Override
    public Machine checkMachine(Machine machine) {
        Machine m = machineMapper.getAMachine(machine);
        return m;
    }

    @Override
    public Machine selectAMachine(User user) {
        Machine machine=machineMapper.selectAMachine(user);
        return machine;
    }

    @Override
    public List<Machine> selectDamageMachine() {
        List<Machine> list = machineMapper.select_DamageMachine();
        return list;
    }

    @Override
    public List<MachineTop> selectMachineTop() {
        List<MachineTop> list = machineMapper.select_MachineTop();
        return list;
    }
}
