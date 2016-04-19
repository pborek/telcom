package com.borek.telecom.web;

import com.borek.telecom.entity.Account;
import com.borek.telecom.entity.User;
import com.borek.telecom.service.AccountService;
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
@RequestMapping(value = "/accountService")
public class AccountWeb {

  @Autowired
  private AccountService accountService;

  @Autowired
  private UserService userService;

  @RequestMapping(value = "/account", method = RequestMethod.GET)
  public String accountPage1(ModelMap modelmap, Principal principal) {

    String name = principal.getName();
    User user = new User();
    Account account = new Account();
    List<User> listOfUsers = userService.getUsers();
    List<Account> listOfAccounts = accountService.getAccounts();
    for (int i = 0; i < listOfUsers.size(); i++) {
      if (listOfUsers.get(i).getLogin().equals(name)) {
        user = listOfUsers.get(i);
      }
    }

    for (int i = 0; i < listOfAccounts.size(); i++) {
      int id = listOfAccounts.get(i).getId();
      int userAccountId = user.getAccountId();
      if (id == userAccountId) {
        account = listOfAccounts.get(i);
        break;
      }
    }
    modelmap.put("account1", account);
    return "account";
  }

  @RequestMapping(value = "/addAccount", method = RequestMethod.GET)
  public String addAccount(ModelMap modelmap) {
    modelmap.put("account", new Account());
    return "addAccount";
  }

  @RequestMapping(value = "/addAccount", method = RequestMethod.POST)
  public String addAccount(@ModelAttribute(value = "account") Account account, ModelMap modelmap) {
    accountService.addAccount(account);
    return "redirect:/accountService/accounts";
  }

  @RequestMapping(value = "/deleteAccount/{id}", method = RequestMethod.GET)
  public String deleteAccount(@PathVariable(value = "id") String id) {
    Account account = accountService.getAccountById(id);

    accountService.deleteAccount(account);
    return "redirect:/accountService/accounts";
  }

  @RequestMapping(value = "/editAccount/{id}", method = RequestMethod.GET)
  public String addAccount(@PathVariable(value = "id") String id, ModelMap modelmap) {
    Account account = accountService.getAccountById(id);
    modelmap.put("account", account);
    return "editAccount";
  }

  @RequestMapping(value = "/editAccount", method = RequestMethod.POST)
  public String updateAccount(@ModelAttribute(value = "account") Account account, ModelMap modelmap) {
    accountService.updateAccount(account);
    List<Account> listOfAccounts = accountService.getAccounts();
    modelmap.put("ListAccounts", listOfAccounts);
    return "redirect:/accountService/accounts";
  }

  @RequestMapping(value = "/accounts", method = RequestMethod.GET)
  public String accountsPage(ModelMap modelmap) {
    List<Account> listOfAccounts = accountService.getAccounts();
    modelmap.put("ListAccounts", listOfAccounts);

    return "listAccounts";
  }

  @RequestMapping(value = "/checkAccount", method = RequestMethod.GET,
      produces = "application/json;charset=utf-8")
  public @ResponseBody
  String cos(@RequestParam(value = "accountID") String accountID) {
    String status = "true";
    List<Account> listOfAccounts = accountService.getAccounts();

    for (int i = 0; i < listOfAccounts.size(); i++) {
      String id = Integer.toString(listOfAccounts.get(i).getId());
      if (id.equals(accountID)) {
        status = "false";
      }

    }
    return status;

  }


}
