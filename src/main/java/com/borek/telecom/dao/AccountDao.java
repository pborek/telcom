package com.borek.telecom.dao;

import com.borek.telecom.entity.Account;

import java.util.List;

/**
 * @author Piotr Borek
 *
 */
public interface AccountDao {
  void addAccount(Account account);

  void deleteAccount(Account account);

  void updateAccount(Account account);

  Account getAccount(Account account);

  public List<Account> getAllAccounts();

}
