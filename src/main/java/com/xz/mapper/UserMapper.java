package com.xz.mapper;

import com.xz.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {

    User select(User user);

    int insert(@Param("u") User user);

    User selectExist(User u);
}
