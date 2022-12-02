package com.gjm.mall.mapper;

import com.gjm.mall.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;



public interface UserMapper {
    User login(User user);
    int updatePassword(User user);

    User queryUserById(int user_id);



}
