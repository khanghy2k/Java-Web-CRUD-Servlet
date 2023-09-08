package com.example.Session5Javawebb.service.impl;

import com.example.Session5Javawebb.model.User;
import com.example.Session5Javawebb.service.UserService;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class UserSeviceImpl implements UserService {
    private static List<User> users = new ArrayList<>(Arrays.asList(
            (new User("U01", "Mai Văn Hoàn", "1234", true, 1, 100000, new Date(), "Hà Nội")),
            (new User("U02", "Nguyễn Văn Nam", "1234", false, 1, 10000, new Date(), "Bắc giang")),
            (new User("U03", "Nguyễn Thái Hoàn", "1234", true, 2, 20000, new Date(), "Nam Định")),
            (new User("U04", "Trần Đăng Khoa", "1234", false, 3, 300000, new Date(), "Hà Tây"))
    ));


    @Override
    public List<User> findAll() {
        return users;
    }

    @Override
    public User findId(String id) {
        return users.stream().filter(u -> u.getId().equals(id))
                .findFirst().orElse(null);
    }

    @Override
    public void add(User user) {
        users.add(user);
    }

    @Override
    public void edit(User user) {
        User u = findId(user.getId());
        u.setUsername(user.getUsername());
        u.setPassword(user.getPassword());
        u.setRole(user.getRole());
        u.setBalance(user.getBalance());
        u.setBirthday(user.getBirthday());
        u.setStatus(user.isStatus());
        u.setAddress(user.getAddress());
    }

    @Override
    public void remove(String id) {
        users.removeIf(u -> u.getId().equals(id));
    }
}
