package com.borek.telecom.service;

import java.util.List;

import com.borek.telecom.vos.AccountVo;
import com.borek.telecom.vos.UserVo;

public interface UserService {
	UserVo getUserById(String id);

	List<UserVo> getUsers();
	
	void updateUser(UserVo userVo);
	
	
	


	
	

	

}
