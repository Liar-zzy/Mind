package com.xz.service;

import com.xz.pojo.Machine;

import javax.crypto.Mac;
import java.util.List;

public interface MachineService {

    boolean add_machine(Machine machine);

    List<Machine> selectAllMachine();

    boolean deleteAMachine(int machineId);

    boolean updateAMachine(Machine machine);

    Machine checkMachine(Machine machine);

    List<Machine> selectDamageMachine();
}
