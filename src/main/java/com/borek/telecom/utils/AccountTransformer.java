package com.borek.telecom.utils;

import com.borek.telecom.entity.Account;
import com.borek.telecom.vos.AccountVo;

/**
 * @author Piotr Borek
 *
 */
public class AccountTransformer {
    public static AccountVo packAccountEntityInToVo(Account account) {

	AccountVo accountVo = new AccountVo();

	accountVo.setId(account.getId());
	accountVo.setInternetMb(account.getInternetMb());
	accountVo.setMinutesToTheNetwork(account.getMinutesToTheNetwork());
	accountVo.setMinutesForAll(account.getMinutesForAll());
	accountVo.setSmsToAll(account.getSmsToAll());
	accountVo.setAccountBalance(account.getAccountBalance());
	accountVo.setActivationDate(account.getActivationDate());
	accountVo.setValidityDateOfIncomingCalls(account
		.getValidityDateOfIncomingCalls());
	accountVo.setValidityDateOfOutgoingCalls(account
		.getValidityDateOfOutgoingCalls());
	return accountVo;
    }

    public static Account packVInToEnetity(AccountVo accountVo) {

	Account account = new Account();
	account.setId(accountVo.getId());
	account.setInternetMb(accountVo.getInternetMb());
	account.setMinutesToTheNetwork(accountVo.getMinutesToTheNetwork());
	account.setMinutesForAll(accountVo.getMinutesForAll());
	account.setSmsToAll(accountVo.getSmsToAll());
	account.setAccountBalance(accountVo.getAccountBalance());
	account.setActivationDate(accountVo.getActivationDate());
	account.setValidityDateOfIncomingCalls(accountVo
		.getValidityDateOfIncomingCalls());
	account.setValidityDateOfOutgoingCalls(accountVo
		.getValidityDateOfOutgoingCalls());
	return account;
    }
}
