package com.xz.service;

import com.xz.pojo.Machine;
import com.xz.pojo.User;

import javax.crypto.Mac;
import java.util.List;

public interface MachineService {

    boolean add_machine(Machine machine);

    List<Machine> selectAllMachine();

    boolean deleteAMachine(int machineId);

    boolean updateAMachine(Machine machine);

    Machine checkMachine(Machine machine);

    Machine selectAMachine(User user);

    List<Machine> selectDamageMachine();
}
