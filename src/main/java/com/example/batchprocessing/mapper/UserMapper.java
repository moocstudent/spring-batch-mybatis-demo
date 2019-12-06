package com.example.batchprocessing.mapper;

import com.example.batchprocessing.bean.User;

import java.util.List;

public interface UserMapper {

    User getUserById(Integer id);

    List<User> getUserSelective(User user);

    List<User> getUserList();

    //可以积累50个数据执行一次新数据表的写入
    int addOneUser(User user);

    //可以积累50个数据执行一次
    int updateOneUser(User user);
}
