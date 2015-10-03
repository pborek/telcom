package com.borek.telecom.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Piotr Borek
 *
 */
@Entity
@Table(name = "account", schema = "telecom")
public class Account {

	@Id
	@Column(name = "account_id", nullable = false, columnDefinition = "int default 10000")
	private int id;
	
	@Column(name = "activation_date")
	private Date activationDate;

	@Column(name = "account_balance")
	private Double accountBalance;

	@Column(name = "validity_date_of_outgoing_calls")
	private Date validityDateOfOutgoingCalls;

	@Column(name = "validity_date_of_incoming_calls")
	private Date validityDateOfIncomingCalls;

	@Column(name = "internet_mb")
	private Integer internetMb;

	@Column(name = "minutes_to_the_network")
	private Integer minutesToTheNetwork;

	@Column(name = "minutes_for_all")
	private Integer minutesForAll;

	@Column(name = "sms_to_all")
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
	
	 public void setValidityDateOfOutgoingCalls(Date
	 validityDateOfOutgoingCalls) {
	 this.validityDateOfOutgoingCalls = validityDateOfOutgoingCalls;
	 }
	
	 public Date getValidityDateOfIncomingCalls() {
	 return validityDateOfIncomingCalls;
	 }
	
	 public void setValidityDateOfIncomingCalls(Date
	 validityDateOfIncomingCalls) {
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
