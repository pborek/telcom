package com.borek.telecom.dao;

import java.util.List;

import com.borek.telecom.entity.User;

public interface UserDao {

	void addUser(User user);

	void deleteUser(User user);

	void updateUser(User user);

	User getUser(User user);

	public List<User> getAllUsers();

}
