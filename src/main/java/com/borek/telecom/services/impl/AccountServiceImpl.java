package com.borek.telecom.services.impl;

import java.util.ArrayList;
import java.util.List;






import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.borek.telecom.dao.AccountDao;
import com.borek.telecom.entity.Account;
import com.borek.telecom.service.AccountService;
import com.borek.telecom.utils.AccountTransformer;
import com.borek.telecom.utils.UserTransformer;
import com.borek.telecom.vos.AccountVo;
import com.borek.telecom.vos.UserVo;

@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	private AccountDao accountDao;

	@Override
	public AccountVo getAccountById(String id) {
		Account temp = new Account();
		temp.setId(Integer.parseInt(id));

		return AccountTransformer.packAccountEntityInToVo(accountDao
				.getAccount(temp));

	}

	@Override
	public List<AccountVo> getAccounts() {
		List<AccountVo> listAccountVo = new ArrayList<AccountVo>();
		List<Account> listOfAccounts = accountDao.getAllAccounts();
		for (int i = 0; i < listOfAccounts.size(); i++) {
			listAccountVo.add(AccountTransformer
					.packAccountEntityInToVo(listOfAccounts.get(i)));

		}

		return listAccountVo;
	}

	@Override
	public void addAccount(AccountVo accountVo) {
		accountDao.addAccount(AccountTransformer.packVInToEnetity(accountVo));

	}

	@Override
	public void updateAccount(AccountVo accountVo) {
		accountDao.updateAccount(AccountTransformer.packVInToEnetity(accountVo));

	}

	@Override
	public void deleteAccount(AccountVo accountVo) {
		accountDao.deleteAccount(AccountTransformer.packVInToEnetity(accountVo));

	}



	
	
}
