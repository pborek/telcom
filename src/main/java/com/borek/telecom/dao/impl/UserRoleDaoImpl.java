/**
 * 
 */
package com.borek.telecom.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.borek.telecom.dao.UserRoleDao;
import com.borek.telecom.entity.UserRole;

/**
 * @author Piotr Borek
 *
 */
@Repository
public class UserRoleDaoImpl extends BaseDaoImpl implements UserRoleDao {

  @Override
  @Transactional
  public void addUserRole(UserRole userRole) {

    try {
      getSession().save(userRole);
    } catch (Exception e) {
      e.printStackTrace();
    }
  }

  @Override
  @Transactional
  public void deleteUserRole(UserRole userRole) {
    try {
      getSession().delete(userRole);
    } catch (Exception e) {
      e.printStackTrace();
    }
  }

  @Override
  @Transactional
  public void updateUserRole(UserRole userRole) {
    try {
      getSession().update(userRole);
    } catch (Exception e) {
      e.printStackTrace();
    }
  }

  @Transactional
  @Override
  public UserRole getUserRole(UserRole userRole) {
    Criteria criteria = null;
    try {
      criteria = getSession().createCriteria(UserRole.class);
      criteria.add(Restrictions.idEq(userRole.getId()));
    } catch (Exception e) {
      e.printStackTrace();
    }
    return (UserRole) criteria.uniqueResult();
  }


  @Transactional
  @Override
  public UserRole getUserRoleLogin(UserRole userRole) {
    Criteria criteria = null;
    try {
      criteria = getSession().createCriteria(UserRole.class);
      criteria.add(Restrictions.idEq(userRole.getLogin()));
    } catch (Exception e) {
      e.printStackTrace();
    }
    return (UserRole) criteria.uniqueResult();
  }


  @SuppressWarnings("unchecked")
  @Transactional
  @Override
  public List<UserRole> getAllUsersRole() {
    return getSession().createCriteria(UserRole.class).list();
  }

}
