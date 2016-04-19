package com.borek.telecom.services.impl;

import com.borek.telecom.dao.AccountDao;
import com.borek.telecom.entity.Account;
import com.borek.telecom.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


/**
 * @author Piotr Borek
 *
 */
@Service
public class AccountServiceImpl implements AccountService {

  @Autowired
  private AccountDao accountDao;

  @Override
  public Account getAccountById(String id) {
    Account temp = new Account();
    temp.setId(Integer.parseInt(id));
    return accountDao.getAccount(temp);

  }

  @Override
  public List<Account> getAccounts() {
    List<Account> listAccount = new ArrayList<Account>();
    List<Account> listOfAccounts = accountDao.getAllAccounts();
    for (int i = 0; i < listOfAccounts.size(); i++) {
      listAccount.add(listOfAccounts.get(i));

    }
    return listAccount;
  }

  @Override
  public void addAccount(Account account) {
    accountDao.addAccount(account);

  }

  @Override
  public void updateAccount(Account account) {
    accountDao.updateAccount(account);

  }

  @Override
  public void deleteAccount(Account account) {
    accountDao.deleteAccount(account);

  }

}
