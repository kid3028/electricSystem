package com.electric.controller;

import com.electric.entity.Machine;
import com.electric.service.MachineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;
import java.util.Objects;

@Controller
@RequestMapping("/machine")
public class MachineController {
    @Autowired
    private MachineService machineService;

    @GetMapping("/list")
    public ModelAndView listMachine(Map<String, Object> map) {
        List<Machine> machineList = machineService.findAll();
        map.put("machineList",machineList);
        return new ModelAndView("machine/list", map);
    }
    @GetMapping("/save")
    public ModelAndView saveUI(){
        return new ModelAndView("machine/save");
    }

    @PostMapping("/save")
    public ModelAndView save(Machine machine){
        if(Objects.nonNull(machine.getId())) {
            Machine result = machineService.findOne(machine.getId());
            if(Objects.nonNull(result)) {
                machine.setId(result.getId());
                machine.setCreateTime(result.getCreateTime());
                machine.setUpdateTime(result.getUpdateTime());
            }else{
                machine.setId(null);
            }
        }
        machineService.save(machine);

        return new ModelAndView("redirect:/machine/list");
    }
    @GetMapping("/update/{id}")
    public ModelAndView update(@PathVariable("id") Integer id, Map<String, Machine> map){
        Machine machine = machineService.findOne(id);
        map.put("machine", machine);
        return new ModelAndView("machine/save", map);
    }

    @GetMapping("/delete/{id}")
    public ModelAndView delete(@PathVariable("id")Integer id) {
        Machine machine = machineService.findOne(id);
        if(!Objects.isNull(machine)) {
            machineService.delete(id);
        }
        return new ModelAndView("redirect:/machine/list");
    }

    @GetMapping("/machineTest")
    public String machineTestUI(){
        return "machine/machineTest";
    }

    @PostMapping("/machineTest")
    public ModelAndView machineTest(@RequestParam("arg1")Double arg1, Map<String, Object> map) {
        if(arg1 == null || arg1.doubleValue() < 0.0 || arg1.doubleValue() > 2.0) {
            map.put("result", "设备异常");
        }else {
            map.put("result", "设备正常");
        }
        return new ModelAndView("machine/result");
    }
}
