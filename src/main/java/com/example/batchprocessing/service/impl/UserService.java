package com.example.batchprocessing.service.impl;

import com.example.batchprocessing.bean.User;
import com.example.batchprocessing.service.IUserService;

import java.util.List;

public class UserService implements IUserService {
    @Override
    public User getUserById(Integer id) {
        return null;
    }

    @Override
    public List<User> getUserSelective(User user) {
        return null;
    }

    @Override
    public List<User> getUserList() {
        return null;
    }

    @Override
    public int addOneUser(User user) {
        return 0;
    }

    @Override
    public int updateOneUser(User user) {
        return 0;
    }
}
