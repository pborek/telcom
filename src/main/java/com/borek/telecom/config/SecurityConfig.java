//package com.borek.telecom.config;
//
//import javax.sql.DataSource;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//
//@Configuration
//@EnableWebSecurity
//public class SecurityConfig extends WebSecurityConfigurerAdapter {
//	// @formatter:off
//	
//	@Autowired
//	DataSource dataSource;
//	
//	@Autowired
//	public void configureGlobal(AuthenticationManagerBuilder auth)
//			throws Exception {
//		  auth.jdbcAuthentication().dataSource(dataSource)
//			.usersByUsernameQuery(
//				"select username,password, enabled from users where username=?")
//			.authoritiesByUsernameQuery(
//				"select username, role from user_roles where username=?");
//	}
//
////	protected void configure(HttpSecurity http) throws Exception {
////		   http
////	        .authorizeRequests()
////	            .anyRequest().authenticated()
////	            .and()
////	        .formLogin()
////	            .loginPage("/login") 
////	            .permitAll();
//		   
//		   
//		   
//
//			protected void configure(HttpSecurity http) throws Exception {
//		 
//			  http.authorizeRequests()
//				.antMatchers("/userService/*").access("hasRole('ROLE_USER')")
//				.and()
//				  .formLogin().loginPage("/login").failureUrl("/login?error")
//				  .usernameParameter("username").passwordParameter("password")
//				.and()
//				  .logout().logoutSuccessUrl("/login?logout")
//				  
//				.and()
//				  .exceptionHandling().accessDeniedPage("/403")
//				.and();
//				
//				
//				  //.csrf();
//			  
//			}
//		   
//
////	}
//}
//
// 
