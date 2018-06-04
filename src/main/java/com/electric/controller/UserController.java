package com.electric.controller;

import com.electric.entity.User;
import com.electric.service.Userservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;
import java.util.Objects;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private Userservice userService;

    @GetMapping("/list")
    public ModelAndView listUser(Map<String, Object> map) {
        List<User> userList = userService.findAll();
        map.put("userList",userList);
        return new ModelAndView("user/list", map);
    }


    @GetMapping("/detail/{userName}")
    public ModelAndView detail(@PathVariable("userName") String userName, Map<String, Object> map) {
        User user = userService.findByUserName(userName);
        map.put("user", user);
        return new ModelAndView("user/detail", map);
    }

    @GetMapping("/save")
    public ModelAndView saveUI(){
        return new ModelAndView("user/save");
    }

    @PostMapping("/save")
    public ModelAndView save(User user, Map<String, Object> map) {
        if (Objects.nonNull(user.getId())) {
            User result = userService.findById(user.getId());
            if (Objects.nonNull(result)) {
                user.setId(result.getId());
                user.setPassword(result.getPassword());
                user.setCreateTime(result.getCreateTime());
                user.setUpdateTime(result.getUpdateTime());
            } else {
                user.setId(null);
            }
        }else {
            user.setPassword("123456");
        }
        userService.saveUser(user);

        return new ModelAndView("redirect:/user/list");
    }

    @GetMapping("/update/{id}")
    public ModelAndView update(@PathVariable("id") Integer id, Map<String, User> map){
        User user = userService.findById(id);
        map.put("user", user);
        return new ModelAndView("user/save", map);
    }

    @GetMapping("/delete/{id}")
    public ModelAndView delete(@PathVariable("id")Integer id) {
        User user = userService.findById(id);
        if(!Objects.isNull(user)) {
            userService.delete(id);
        }
        return new ModelAndView("redirect:/user/list");
    }

    @GetMapping("resetPassword")
    public String resetPasswordUI() {
        return "user/resetPassword";
    }

    @PostMapping("/resetPassword")
    public ModelAndView resetPassword(@RequestParam("oldPassword") String oldPasswrod, @RequestParam("newPassword") String newPassword, @RequestParam("userName") String userName, Map<String, String> map) {
        User user = userService.findByUserName(userName);
        if (!user.getPassword().equals(oldPasswrod)) {
            map.put("msg", "原密码错误");
            return new ModelAndView("user/resetPassword");
        }

        user.setPassword(newPassword);
        userService.saveUser(user);
        return new ModelAndView("redirect:/user/detail/" + user.getUserName());
    }


}
