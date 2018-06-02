/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoktakip.service;

import com.stoktakip.dao.UserDAO;
import com.stoktakip.domain.User;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Elidor
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    @Override
    public User login(String username, String password) {
        List<User> userList = userDAO.findByProperty("username", username);
        for (User user : userList) {
            if (user.getPassword().equals(password)) {
                return user;
            } else {
                return null;
            }
        }
        return null;
    }

    @Override
    public void update(User u) {
        userDAO.update(u);
    }

    @Override
    public void delete(User u) {
        userDAO.delete(u);
    }

    @Override
    public User findById(Integer userId) {
        return userDAO.findById(userId);
    }

    @Override
    public List<User> findAll() {
        return userDAO.findAll();
    }

    @Override
    public List<User> findByProperty(String propName, Object propValue) {
        return userDAO.findByProperty(propName, propValue);
    }

    public void save(User u) {
        userDAO.save(u);
    }

}
