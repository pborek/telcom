package com.borek.telecom.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.borek.telecom.service.UserService;
import com.borek.telecom.vos.UserVo;

/**
 * @author Piotr Borek
 *
 */
@Controller
@RequestMapping(value = "/userService")
public class UserWeb {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public String addUser(@RequestBody UserVo userVo) {

	userService.addUser(userVo);
	return "redirect:/userService/user?id=" + userVo.getId();
    }

    @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
    public String updateUser(@RequestBody UserVo userVo) {

	userService.updateUser(userVo);
	return "redirect:/userService/users";
    }

    @RequestMapping(value = "/deleteUser", method = RequestMethod.DELETE)
    public String deleteUser(@RequestBody UserVo userVo) {

	userService.deleteUser(userVo);
	return "redirect:/userService/users";
    }

    @RequestMapping(value = "/user", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    public @ResponseBody UserVo getUserById(
	    @RequestParam(value = "id") String id) {

	return userService.getUserById(id);

    }

    @RequestMapping(value = "/users", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    public @ResponseBody List<UserVo> getUsers() {

	List<UserVo> listOfUsers = userService.getUsers();
	return listOfUsers;

    }

}
