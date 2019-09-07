package com.xz.service;

import com.xz.pojo.User;
import org.springframework.stereotype.Service;


public interface UserService {

    User get(User user);

    boolean insert_register(User u);

    User exist(User u);

}
