package com.xz.mapper;

import com.xz.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

    User select(User user);

    int insert(@Param("u") User user);

    User selectExist(User u);

    List<User> select_allUser();

    int delete_AUser(@Param("username") String username);

    int update_AUser(@Param("updateUser") User user);

    User select_AUser(User user);
}
