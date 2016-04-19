package com.borek.telecom.entity;

import org.springframework.stereotype.Repository;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Piotr Borek
 *
 */
@Entity
@Repository
@Table(name = "user_roles", schema = "telecom")
public class UserRole {

  @Id()
  private int id;
  @Column(name = "login")
  private String login;
  @Column(name = "ROLE")
  private String role;

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

  public String getRole() {
    return role;
  }

  public void setRole(String role) {
    this.role = role;
  }

}
