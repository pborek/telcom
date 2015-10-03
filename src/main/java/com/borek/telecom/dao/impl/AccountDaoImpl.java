package com.borek.telecom.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.borek.telecom.dao.AccountDao;
import com.borek.telecom.entity.Account;

/**
 * @author Piotr Borek
 *
 */
@Repository
public class AccountDaoImpl extends BaseDaoImpl implements AccountDao {

	@Override
	@Transactional
	public void addAccount(Account account) {
		getSession().save(account);

	}

	@Override
	@Transactional
	public void deleteAccount(Account account) {
		getSession().delete(account);

	}

	@Override
	@Transactional
	public void updateAccount(Account account) {
		getSession().update(account);
	}

	@Transactional
	@Override
	public Account getAccount(Account account) {
		Criteria criteria = getSession().createCriteria(Account.class);
		criteria.add(Restrictions.idEq(account.getId()));
		return (Account) criteria.uniqueResult();

	}

	@Transactional
	@Override
	public List<Account> getAllAccounts() {
		Criteria criteria = getSession().createCriteria(Account.class);
		return criteria.list();

	}

}
