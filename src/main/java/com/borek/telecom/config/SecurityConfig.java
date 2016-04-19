package com.borek.telecom.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import javax.sql.DataSource;

/**
 * @author Piotr Borek
 *
 */
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

  @Autowired
  DataSource dataSource;

  @Autowired
  public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
    auth.jdbcAuthentication().dataSource(dataSource)
        .usersByUsernameQuery("select login,password, enabled from users where login=?")
        .authoritiesByUsernameQuery("select login, role from user_roles where login=?");
  }

  protected void configure(HttpSecurity http) throws Exception {

    http.authorizeRequests()
        .antMatchers( "/accountService/accounts**","/userService/users**","/userService/addUser**", "/userService/deleteUser/**",
            "/accountService/addAccount**", "/accountService/deleteAccount/**")
        .access("hasRole('ROLE_ADMIN')")
        .and()
        .formLogin()
        .loginPage("/login")
        .failureUrl("/login?error")
        .usernameParameter("login")
        .passwordParameter("password")
        .and()
        .logout()
        .logoutSuccessUrl("/login?logout")
        .and()
        .exceptionHandling()
        .accessDeniedPage("/403")
        .and()
        .csrf();

    http.authorizeRequests()

        .antMatchers( "/userService/editUser/**",
            "/accountService/editAccount/**")
        .access("hasAnyRole('ROLE_ADMIN','ROLE_USER')")
        .and()
        .formLogin()
        .loginPage("/login")
        .failureUrl("/login?error")
        .usernameParameter("login")
        .passwordParameter("password")
        .and()
        .logout()
        .logoutSuccessUrl("/login?logout")
        .and()
        .exceptionHandling()
        .accessDeniedPage("/403")
        .and()
        .csrf();

  }
}
