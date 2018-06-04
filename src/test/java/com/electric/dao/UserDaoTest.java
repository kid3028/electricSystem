package com.electric.dao;

import com.electric.entity.User;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;


@RunWith(SpringRunner.class)
@SpringBootTest
public class UserDaoTest {
    @Autowired
    private UserDao userDao;



//
//    @Test
//    public void save() {
//        User user = new User("admin", "admin", "123456", 123456789, "研发部","12345678901", 30, 1);
//        User result = userDao.save(user);
//        Assert.assertNotNull(result);
//    }
//
//    @Test
//    public void testFindByUserNameAndPassword() {
//        Assert.assertNotNull(userDao.findByUserNameAndPassword("zhangsan", "123456"));
//    }

}
