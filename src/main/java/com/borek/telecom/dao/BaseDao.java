package com.borek.telecom.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 * @author Piotr Borek
 *
 */
public interface BaseDao {

  SessionFactory getSessionFactory();

  void setSessionFactory(SessionFactory sessionFactory);

  Session getSession();

}
