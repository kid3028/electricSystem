package com.electric.aspect;

import com.electric.constant.SystemConstant;
import com.electric.enums.ResultEnum;
import com.electric.exception.ElectricException;
import com.electric.util.CookieUtil;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.Objects;

@Aspect
@Component
@Slf4j
public class SystemValid {

    @Pointcut("execution(public * com.electric.controller.*.*(..))" +
    "&&!execution(public * com.electric.controller.loginController.*(..))")
    private void verify(){}

    @Pointcut("execution(public * com.electric.controller.MachineController.*(..))" +
    "&&execution(public * com.electric.controller.UserController.save(..))")
    private void manage(){}


    @Before("verify()")
    public void doVerify() {
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();
        Cookie cookie = CookieUtil.getCookie(request,SystemConstant.CURRENT_USER);
        if(Objects.isNull(cookie)) {
            log.error("【登录校验】Cookie中未查到登录信息");
            throw new ElectricException(ResultEnum.USER_NOT_LOGIN);
        }
    }

    @Before("manage()")
    public void doManage() {
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();
        Cookie cookie = CookieUtil.getCookie(request,SystemConstant.USER_ROLE);
        if(Objects.isNull(cookie)) {
            log.error("【用户权限】Cookie中未查到登录信息");
            throw new ElectricException(ResultEnum.USER_NOT_LOGIN);
        }else {
            if(!"1".equals(cookie.getValue())) {
                log.error("【用户权限】用户试图访问系统，userName={}", SystemConstant.CURRENT_USER);
                throw new ElectricException(ResultEnum.NON_PRIVILEGE);
            }
        }
    }
}
