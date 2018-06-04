package com.electric.dao;

import com.electric.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;


public interface UserDao extends JpaRepository<User, Integer> {

    User findByUserName(String userName);

    User findByUserNameAndPassword(String userName, String password);

}
