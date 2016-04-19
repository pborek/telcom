package com.borek.telecom.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.math.BigInteger;

/**
 * @author Piotr Borek
 *
 */
@Entity
@Table(name = "users", schema = "telecom")
public class User {

  @Id
  private int id;
  @Column(name = "login")
  private String login;
  @Column(name = "surname")
  private String surname;
  @Column(name = "name")
  private String name;


  private String password;
  private BigInteger pesel;
  private String street;
  private String city;
  private String email;

  @Column(name = "home_nr")
  private Integer homeNr;
  @Column(name = "post_code")
  private String postCode;
  @Column(name = "flat_nr")
  private Integer flatNr;
  @Column(name = "basic_phone")
  private Integer basicPhone;
  //@OneToOne()
  @Column(name = "account_id", nullable = false, columnDefinition = "int default 10000")
  private Integer accountId;

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

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

  public String getLogin() {
    return login;
  }

  public void setLogin(String login) {
    this.login = login;
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

}
