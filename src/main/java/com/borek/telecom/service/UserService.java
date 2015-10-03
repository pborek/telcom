package com.borek.telecom.service;

import java.util.List;

import com.borek.telecom.vos.UserVo;

/**
 * @author Piotr Borek
 *
 */
public interface UserService {
    UserVo getUserById(String id);

    List<UserVo> getUsers();

    void addUser(UserVo userVo);

    void updateUser(UserVo userVo);

    void deleteUser(UserVo userVo);

}
