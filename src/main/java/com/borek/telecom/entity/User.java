package com.borek.telecom.entity;

import java.math.BigInteger;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user", schema = "telecom")
public class User {

	@Id
	private int id;
	private String name;
	private String surname;
	private String password;
	private BigInteger pesel;
	private String document;
	private String street;
	private String city;
	private String province;
	private String email;

	@Column(name = "home_nr")
	private Integer homeNr;
	@Column(name = "post_code")
	private String postCode;
	@Column(name = "flat_nr")
	private Integer flatNr;
	@Column(name = "basic_phone")
	private Integer basicPhone;
	@Column(name = "contact_phone")
	private Integer contactPhone;
	@Column(name = "account_id", nullable = false, columnDefinition = "int default 10000")
	private Integer accountId;

	public Integer getAccountId() {
		return accountId;
	}

	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public void setPesel(BigInteger pesel) {
		this.pesel = pesel;
	}

	public BigInteger getPesel() {
		return pesel;
	}

	public String getDocument() {
		return document;
	}

	public void setDocument(String document) {
		this.document = document;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getFlatNr() {
		return flatNr;
	}

	public void setFlatNr(Integer flatNr) {
		this.flatNr = flatNr;
	}

	public Integer getHomeNr() {
		return homeNr;
	}

	public void setHomeNr(Integer homeNr) {
		this.homeNr = homeNr;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getBasicPhone() {
		return basicPhone;
	}

	public void setBasicPhone(Integer basicPhone) {
		this.basicPhone = basicPhone;
	}

	public Integer getContactPhone() {
		return contactPhone;
	}

	public void setContactPhone(Integer contactPhone) {
		this.contactPhone = contactPhone;
	}
}
