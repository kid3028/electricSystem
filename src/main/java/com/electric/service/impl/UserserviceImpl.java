package com.electric.service.impl;

import com.electric.dao.UserDao;
import com.electric.entity.User;
import com.electric.enums.ResultEnum;
import com.electric.exception.ElectricException;
import com.electric.service.Userservice;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.validation.constraints.Null;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
public class UserserviceImpl implements Userservice {

    @Autowired
    private UserDao userDao;

    @Override
    public User saveUser(User user) {
        if (user == null) {
            log.error("【用户管理】添加用户失败，user={}", user);
            throw new ElectricException(ResultEnum.USER_EMPTY);
        }
        return userDao.save(user);

    }

    @Override
    public User findByUserName(String userName) {
        return userDao.findByUserName(userName);
    }

    @Override
    public User findById(Integer id) {
        User user = userDao.findOne(id);
        return user;
    }


    public List<User> findAllUser() {
        return userDao.findAll();
    }

    @Override
    public User findByUserNameAndPassword(String userName, String password) {
        return userDao.findByUserNameAndPassword(userName, password);
    }

    @Override
    public void delete(Integer id) {
        userDao.delete(id);
    }

    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }

}
