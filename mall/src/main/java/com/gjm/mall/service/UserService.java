package com.gjm.mall.service;

import com.gjm.mall.entity.User;

import java.util.List;

public interface UserService {
    User login(User user);
    int updatePassword(User user);

    User queryUserById(int user_id);




}
