package com.borek.telecom.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.borek.telecom.dao.BaseDao;

@Repository
public class BaseDaoImpl implements BaseDao {

	@Autowired
	public SessionFactory sessionFactory;

	@Override
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Override
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;

	}

	@Override
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

}
