package com.borek.telecom.service;

import com.borek.telecom.entity.Account;

import java.util.List;

/**
 * @author Piotr Borek
 *
 */
public interface AccountService {

  Account getAccountById(String id);

  List<Account> getAccounts();

  void addAccount(Account account);

  void updateAccount(Account account);

  void deleteAccount(Account account);

}
