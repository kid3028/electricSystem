package com.electric.controller;

import com.electric.constant.SystemConstant;
import com.electric.entity.User;
import com.electric.service.Userservice;
import com.electric.util.CookieUtil;
import com.electric.util.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Controller
public class loginController {

    @Autowired
    private Userservice userservice;
    @GetMapping("/")
    public String loginUI(){
        return "login";
    }

    @PostMapping("/login")
    public ModelAndView login(@RequestParam("userName")String userName, @RequestParam("password")String password, Map<String, Object> map, HttpServletRequest request, HttpServletResponse response) {
        if(StringUtils.isEmpty(userName) || StringUtils.isEmpty(password)) {
            map.put("resultVO", ResultUtil.error("用户名或密码错误"));
            return new ModelAndView("login", map);
        }
        User result = userservice.findByUserNameAndPassword(userName, password);
        if (result == null) {
            map.put("resultVO", ResultUtil.error("用户名或密码错误"));
            return new ModelAndView("login", map);
        }
        request.getSession().setAttribute(SystemConstant.CURRENT_USER, result.getUserName());
        CookieUtil.set(response,SystemConstant.CURRENT_USER,result.getUserName(), SystemConstant.COOKIE_AGE);
        CookieUtil.set(response,SystemConstant.USER_ROLE, result.getIsMgn() + "" , SystemConstant.COOKIE_AGE);
        return new ModelAndView("redirect:/main");
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        request.getSession().invalidate();
        CookieUtil.getCookie(request,SystemConstant.CURRENT_USER).setValue(null);
        CookieUtil.getCookie(request,SystemConstant.USER_ROLE).setValue(null);
        return "redirect:/";
    }


}
