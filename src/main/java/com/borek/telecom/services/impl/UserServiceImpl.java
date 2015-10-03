package com.borek.telecom.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.borek.telecom.dao.UserDao;
import com.borek.telecom.entity.User;
import com.borek.telecom.service.UserService;
import com.borek.telecom.utils.UserTransformer;
import com.borek.telecom.vos.UserVo;

/**
 * @author Piotr Borek
 *
 */
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public UserVo getUserById(String id) {
		User temp = new User();
		temp.setId(Integer.parseInt(id));

		return UserTransformer.packEntityInToVo(userDao.getUser(temp));
	}

	public List<UserVo> getUsers() {
		List<UserVo> listUserVo = new ArrayList<UserVo>();
		List<User> listOfUsers = userDao.getAllUsers();
		for (int i = 0; i < listOfUsers.size(); i++) {
			listUserVo
					.add(UserTransformer.packEntityInToVo(listOfUsers.get(i)));

		}

		return listUserVo;

	}

	@Override
	public void addUser(UserVo userVo) {
		userDao.addUser(UserTransformer.packVInToEnetity(userVo));

	}

	@Override
	public void updateUser(UserVo userVo) {
		userDao.updateUser(UserTransformer.packVInToEnetity(userVo));

	}

	@Override
	public void deleteUser(UserVo userVo) {
		userDao.deleteUser(UserTransformer.packVInToEnetity(userVo));

	}

}
