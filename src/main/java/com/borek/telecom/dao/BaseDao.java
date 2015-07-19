package com.borek.telecom.dao;

import org.hibernate.*;
import org.hibernate.SessionFactory;

public interface BaseDao {

	SessionFactory getSessionFactory();

	void setSessionFactory(SessionFactory sessionFactory);

	Session getSession();

}
