package com.xz.service.impl;

import com.xz.mapper.UserMapper;
import com.xz.pojo.User;
import com.xz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User get(User user) {

        User u = userMapper.select(user);
        return u;
    }

    @Override
    public boolean insert_register(User u) {

        int suc = userMapper.insert(u);
        return suc == 1 ? true:false;
    }

    @Override
    public User selectExist(User u) {
        User user=userMapper.selectExist(u);
        return user;
    }
}
