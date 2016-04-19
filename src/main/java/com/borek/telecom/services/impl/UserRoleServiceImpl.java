package com.borek.telecom.services.impl;

import com.borek.telecom.dao.UserRoleDao;
import com.borek.telecom.entity.UserRole;
import com.borek.telecom.service.UserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Piotr Borek
 *
 */
@Service
public class UserRoleServiceImpl implements UserRoleService {

  @Autowired
  private UserRoleDao userRoleDao;

  @Override
  public UserRole getUserRoleById(String id) {
    UserRole temp = new UserRole();
    temp.setId(Integer.parseInt(id));

    return userRoleDao.getUserRole(temp);
  }
  
  @Override
  public UserRole getUserRoleByLogin(String login) {
    UserRole temp = new UserRole();
    temp.setLogin(login);
    
    return null;
  }
  

  public List<UserRole> getUsersRole() {
    List<UserRole> listUserRole = new ArrayList<UserRole>();
    List<UserRole> listOfUsersRole = userRoleDao.getAllUsersRole();
    for (int i = 0; i < listOfUsersRole.size(); i++) {
      listUserRole.add(listOfUsersRole.get(i));

    }
    return listUserRole;
  }

  @Override
  public void addUserRole(UserRole userRole) {
    userRoleDao.addUserRole(userRole);

  }

  @Override
  public void updateUserRole(UserRole userRole) {
    userRoleDao.updateUserRole(userRole);

  }

  @Override
  public void deleteUserRole(UserRole userRole) {
    userRoleDao.deleteUserRole(userRole);

  }



}
