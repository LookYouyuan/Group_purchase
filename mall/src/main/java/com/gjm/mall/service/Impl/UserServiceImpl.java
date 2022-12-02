package com.gjm.mall.service.Impl;

import com.gjm.mall.entity.User;
import com.gjm.mall.mapper.UserMapper;
import com.gjm.mall.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;
    @Override
    public User login(User user) {
        return this.userMapper.login(user);
    }

    @Override
    public int updatePassword(User user) {
        return this.userMapper.updatePassword(user);
    }

    @Override
    public User queryUserById(int user_id) {
        return this.userMapper.queryUserById(user_id);
    }


}
