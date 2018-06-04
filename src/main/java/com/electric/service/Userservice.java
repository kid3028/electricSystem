package com.electric.service;

import com.electric.entity.User;

import java.util.List;

public interface Userservice {

    User  saveUser(User user);

    User findByUserName(String userName);

    User findById(Integer id);

    List<User> findAllUser();

    User findByUserNameAndPassword(String userName, String password);

    void delete(Integer id0);

    List<User> findAll();



}
