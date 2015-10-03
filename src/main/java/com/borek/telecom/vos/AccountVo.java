package com.borek.telecom.vos;

import java.sql.Date;

/**
 * @author Piotr Borek
 *
 */
public class AccountVo {

	private int id;
	private Date activationDate;
	private Double accountBalance;
	private Date validityDateOfOutgoingCalls;
	private Date validityDateOfIncomingCalls;
	private Integer internetMb;
	private Integer minutesToTheNetwork;
	private Integer minutesForAll;
	private Integer smsToAll;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getActivationDate() {
		return activationDate;
	}

	public void setActivationDate(Date activationDate) {
		this.activationDate = activationDate;
	}

	public Double getAccountBalance() {
		return accountBalance;
	}

	public void setAccountBalance(Double accountBalance) {
		this.accountBalance = accountBalance;
	}

	public Date getValidityDateOfOutgoingCalls() {
		return validityDateOfOutgoingCalls;
	}

	public void setValidityDateOfOutgoingCalls(Date validityDateOfOutgoingCalls) {
		this.validityDateOfOutgoingCalls = validityDateOfOutgoingCalls;
	}

	public Date getValidityDateOfIncomingCalls() {
		return validityDateOfIncomingCalls;
	}

	public void setValidityDateOfIncomingCalls(Date validityDateOfIncomingCalls) {
		this.validityDateOfIncomingCalls = validityDateOfIncomingCalls;
	}

	public Integer getInternetMb() {
		return internetMb;
	}

	public void setInternetMb(Integer internetMb) {
		this.internetMb = internetMb;
	}

	public Integer getMinutesToTheNetwork() {
		return minutesToTheNetwork;
	}

	public void setMinutesToTheNetwork(Integer minutesToTheNetwork) {
		this.minutesToTheNetwork = minutesToTheNetwork;
	}

	public Integer getMinutesForAll() {
		return minutesForAll;
	}

	public void setMinutesForAll(Integer minutesForAll) {
		this.minutesForAll = minutesForAll;
	}

	public Integer getSmsToAll() {
		return smsToAll;
	}

	public void setSmsToAll(Integer smsToAll) {
		this.smsToAll = smsToAll;
	}

}
