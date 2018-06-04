package com.electric.handler;

import com.electric.exception.ElectricException;
import com.electric.exception.LoginException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import java.util.Map;

@ControllerAdvice
public class SystemExceptionHandler {

    @ExceptionHandler(ElectricException.class)
    public ModelAndView handerElectricException(Map<String, Object> map, ElectricException e) {
        map.put("msg", e.getMessage());
        return new ModelAndView("error", map);
    }

    @ExceptionHandler(LoginException.class)
    public ModelAndView handerLoginException(Map<String, Object> map, ElectricException e) {
        map.put("msg", e.getMessage());
        return new ModelAndView("error", map);
    }

    @ExceptionHandler(Exception.class)
    public ModelAndView handlerException(Map<String, String> map) {
        map.put("msg", "系统异常！");
        return new ModelAndView("error", map);
    }
}
