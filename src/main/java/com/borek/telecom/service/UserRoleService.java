/**
 * 
 */
package com.borek.telecom.service;

import com.borek.telecom.entity.UserRole;

import java.util.List;


/**
 * @author Piotr Borek
 *
 */
public interface UserRoleService {
  UserRole getUserRoleById(String id);
  
  UserRole getUserRoleByLogin(String login);

  List<UserRole> getUsersRole();

  void addUserRole(UserRole userRole);

  void updateUserRole(UserRole userRole);

  void deleteUserRole(UserRole userRole);

}
