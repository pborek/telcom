package com.borek.telecom.dao;

import com.borek.telecom.entity.UserRole;

import java.util.List;

/**
 * @author Piotr Borek
 *
 */
public interface UserRoleDao {

  void addUserRole(UserRole userRole);

  void deleteUserRole(UserRole userRole);

  void updateUserRole(UserRole userRole);

  UserRole getUserRole(UserRole userRole);

  UserRole getUserRoleLogin(UserRole userRole);

  public List<UserRole> getAllUsersRole();

}
