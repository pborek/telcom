package com.borek.telecom.dao;

import java.util.List;

import com.borek.telecom.entity.Account;

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
