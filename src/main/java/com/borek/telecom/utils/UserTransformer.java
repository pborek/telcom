package com.borek.telecom.utils;

import com.borek.telecom.entity.User;
import com.borek.telecom.vos.UserVo;

public class UserTransformer {

	public static UserVo packEntityInToVo(User user) {

		UserVo userVo = new UserVo();

		userVo.setId(user.getId());
		userVo.setName(user.getName());
		userVo.setSurname(user.getSurname());
		userVo.setPassword(user.getPassword());
		userVo.setPesel(user.getPesel());
		userVo.setDocument(user.getDocument());
		userVo.setStreet(user.getStreet());
		userVo.setPostCode(user.getPostCode());
		userVo.setFlatNr(user.getFlatNr());
		userVo.setHomeNr(user.getHomeNr());
		userVo.setCity(user.getCity());
		userVo.setProvince(user.getProvince());
		userVo.setBasicPhone(user.getBasicPhone());
		userVo.setContactPhone(user.getContactPhone());
		userVo.setEmail(user.getEmail());
		return userVo;

	}
	
	public static User packVInToEnetity(UserVo userVo) {

		User user = new User();

		user.setId(userVo.getId());
		user.setName(userVo.getName());
		user.setSurname(userVo.getSurname());
		user.setPassword(userVo.getPassword());
		user.setPesel(userVo.getPesel());
		user.setDocument(userVo.getDocument());
		user.setStreet(userVo.getStreet());
		user.setPostCode(userVo.getPostCode());
		user.setFlatNr(userVo.getFlatNr());
		user.setHomeNr(userVo.getHomeNr());
		user.setCity(userVo.getCity());
		user.setProvince(userVo.getProvince());
		user.setBasicPhone(userVo.getBasicPhone());
		user.setContactPhone(userVo.getContactPhone());
		user.setEmail(userVo.getEmail());
		return user;

	}

}

// typu prost na classy int na inerger