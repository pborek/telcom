package com.borek.telecom.service;

import com.borek.telecom.entity.User;

import java.util.List;

/**
 * @author Piotr Borek
 *
 */
public interface UserService {
  User getUserById(String id);

  List<User> getUsers();

  void addUser(User user);

  void updateUser(User user);

  void deleteUser(User user);

}
