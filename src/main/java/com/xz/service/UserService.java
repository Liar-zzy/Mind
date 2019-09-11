package com.xz.service;

import com.xz.pojo.User;
import org.springframework.stereotype.Service;

import java.util.List;


public interface UserService {

    User get(User user);

    boolean insert_register(User u);

    User selectExist(User u);

    List<User> selectAllUser();

    boolean deleteAUser(String username);

    boolean updateAUser(User user);

    User selectAUser(User user);
}
