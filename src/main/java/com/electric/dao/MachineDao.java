package com.electric.dao;

import com.electric.entity.Machine;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MachineDao extends JpaRepository<Machine, Integer> {

}
