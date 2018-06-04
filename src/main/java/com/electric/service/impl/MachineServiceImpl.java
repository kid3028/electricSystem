package com.electric.service.impl;

import com.electric.dao.MachineDao;
import com.electric.entity.Machine;
import com.electric.service.MachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MachineServiceImpl implements MachineService {
    @Autowired
    private MachineDao machineDao;

    @Override
    public Machine findOne(Integer id) {
        return machineDao.findOne(id);
    }

    @Override
    public Machine save(Machine machine) {
        return machineDao.save(machine);
    }

    @Override
    public List<Machine> findAll() {
        return machineDao.findAll();
    }

    @Override
    public void delete(Integer id) {
        machineDao.delete(id);
    }
}
