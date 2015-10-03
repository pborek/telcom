package com.borek.telecom.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.borek.telecom.dao.UserDao;
import com.borek.telecom.entity.User;

/**
 * @author Piotr Borek
 *
 */
@Repository
public class UserDaoImpl extends BaseDaoImpl implements UserDao {

	@Override
	@Transactional
	public void addUser(User user) {
		getSession().save(user);

	}

	@Override
	@Transactional
	public void deleteUser(User user) {
		getSession().delete(user);

	}

	@Override
	@Transactional
	public void updateUser(User user) {
		getSession().update(user);
	}

	@Transactional
	@Override
	public User getUser(User user) {
		Criteria criteria = getSession().createCriteria(User.class);
		criteria.add(Restrictions.idEq(user.getId()));
		return (User) criteria.uniqueResult();

	}

	@Transactional
	@Override
	public List<User> getAllUsers() {
		Criteria criteria = getSession().createCriteria(User.class);
		return criteria.list();

	}

}
