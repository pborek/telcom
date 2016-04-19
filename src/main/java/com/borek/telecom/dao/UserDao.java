package com.borek.telecom.dao;

import com.borek.telecom.entity.User;

import java.util.List;

/**
 * @author Piotr Borek
 *
 */
public interface UserDao {

  void addUser(User user);

  void deleteUser(User user);

  void updateUser(User user);

  User getUser(User user);

  public List<User> getAllUsers();

}
