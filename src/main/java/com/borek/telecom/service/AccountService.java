package com.borek.telecom.service;

import java.util.List;

import com.borek.telecom.vos.AccountVo;

public interface AccountService {

	AccountVo getAccountById(String id);

	List<AccountVo> getAccounts();

	void addAccount(AccountVo accountVo);

	void updateAccount(AccountVo accountVo);

	void deleteAccount(AccountVo accountVo);

}
