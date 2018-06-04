package com.electric.service;

import com.electric.entity.Machine;

import java.util.List;

public interface MachineService {
    Machine findOne(Integer id);

    Machine save(Machine machine);

    List<Machine> findAll();

    void delete(Integer id);

}
