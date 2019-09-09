package com.xz.mapper;

import com.xz.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

    User select(User user);

    int insert(@Param("u") User user);

    User selectExist(User u);

    List<User> select_allUser();
}
