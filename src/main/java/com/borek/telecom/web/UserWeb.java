package com.borek.telecom.web;

import com.borek.telecom.entity.User;
import com.borek.telecom.entity.UserRole;
import com.borek.telecom.service.UserRoleService;
import com.borek.telecom.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

/**
 * @author Piotr Borek
 *
 */
@Controller
@RequestMapping(value = "/userService")
public class UserWeb {

  @Autowired
  private UserService userService;

  @Autowired
  private UserRoleService userRoleService;

  @Autowired
  private UserRole userRole;

  @RequestMapping(value = "/addUser", method = RequestMethod.GET)
  public String addUser(ModelMap modelmap) {
    modelmap.put("user", new User());
    return "addUser";
  }

  @RequestMapping(value = "/user", method = RequestMethod.GET)
  public String userPage1(ModelMap modelmap, Principal principal) {
    String name = principal.getName();
    User user = new User();
    List<User> listOfUsers = userService.getUsers();
    for (int i = 0; i < listOfUsers.size(); i++) {
      if (listOfUsers.get(i).getLogin().equals(name)) {
        user = listOfUsers.get(i);
      }
    }
    modelmap.put("user1", user);
    return "user";
  }


  @RequestMapping(value = "/user", method = RequestMethod.POST)
  public String userPage(@ModelAttribute(value = "user") User user, ModelMap modelmap) {
    userService.updateUser(user);
    return "redirect:/userService/user";
  }

  @RequestMapping(value = "/addUser", method = RequestMethod.POST)
  public String addUser(@ModelAttribute(value = "user") User user, ModelMap modelmap) {
    userService.addUser(user);
    userRole.setLogin(user.getLogin());
    userRole.setRole("ROLE_USER");
    userRoleService.addUserRole(userRole);
    return "redirect:/userService/users";
  }


  @RequestMapping(value = "/updateUser", method = RequestMethod.POST, consumes = "application/json")
  public String updateUser(@RequestBody User user) {
    userService.updateUser(user);
    return "redirect:/userService/users";
  }

  @RequestMapping(value = "/deleteUser/{id}", method = RequestMethod.GET)
  public String deleteUser(@PathVariable(value = "id") String id) {
    User user = userService.getUserById(id);
    List<UserRole> listOfUsersRole = userRoleService.getUsersRole();
    for (int i = 0; i < listOfUsersRole.size(); i++) {
      if (listOfUsersRole.get(i).getLogin().equals(user.getLogin()))
        userRole = listOfUsersRole.get(i);
    }

    userRoleService.deleteUserRole(userRole);
    userService.deleteUser(user);
    return "redirect:/userService/users";
  }

  @RequestMapping(value = "/editUser/{id}", method = RequestMethod.GET)
  public String addUser(@PathVariable(value = "id") String id, ModelMap modelmap) {
    User user = userService.getUserById(id);
    modelmap.put("user", user);
    return "editUser";
  }


  @RequestMapping(value = "/editUser", method = RequestMethod.POST)
  public String updateUser(@ModelAttribute(value = "user") User user, ModelMap modelmap) {
    userService.updateUser(user);
    List<User> listOfUsers = userService.getUsers();
    modelmap.put("ListUsers", listOfUsers);
    return "redirect:/userService/users";
  }

  @RequestMapping(value = "/users", method = RequestMethod.GET)
  public String userPage(ModelMap modelmap) {
//    long startTime = System.currentTimeMillis();
    List<User> listOfUsers = userService.getUsers();
//    long estimatedTime = System.currentTimeMillis() - startTime;
//    System.out.println(estimatedTime);
    modelmap.put("ListUsers", listOfUsers);

    return "listUsers";
  }

  @RequestMapping(value = "/checkLogin", method = RequestMethod.GET,
      produces = "application/json;charset=utf-8")
  public @ResponseBody
  String cos(@RequestParam(value = "login") String login) {
    String status = "true";
    List<User> listOfUsers = userService.getUsers();
    for (int i = 0; i < listOfUsers.size(); i++) {
      if (listOfUsers.get(i).getLogin().equals(login)) {
        status = "false";
      }

    }
    return status;

  }
}
