package com.example.Session5Javawebb.service;

import com.example.Session5Javawebb.model.User;

import java.util.List;

public interface UserService {
    List<User> findAll();
    User findId(String id);
    void add(User user);
    void edit(User user);
    void remove(String id);
}
