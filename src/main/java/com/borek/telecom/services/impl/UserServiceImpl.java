package com.borek.telecom.services.impl;

import com.borek.telecom.dao.UserDao;
import com.borek.telecom.entity.User;
import com.borek.telecom.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Piotr Borek
 *
 */
@Service
public class UserServiceImpl implements UserService {

  @Autowired
  private UserDao userDao;

  @Override
  public User getUserById(String id) {
    User temp = new User();
    temp.setId(Integer.parseInt(id));

    return userDao.getUser(temp);
  }

  public List<User> getUsers() {
    List<User> listUser = new ArrayList<User>();
    List<User> listOfUsers = userDao.getAllUsers();
    for (int i = 0; i < listOfUsers.size(); i++) {
      listUser.add(listOfUsers.get(i));

    }
    return listUser;

    
  }

  @Override
  public void addUser(User user) {
    userDao.addUser(user);

  }

  @Override
  public void updateUser(User user) {
    userDao.updateUser(user);

  }

  @Override
  public void deleteUser(User user) {
    userDao.deleteUser(user);

  }

}
