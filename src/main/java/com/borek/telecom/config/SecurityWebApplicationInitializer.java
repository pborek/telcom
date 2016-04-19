package com.borek.telecom.config;

import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

/**
 * @author Piotr Borek
 *
 */
public class SecurityWebApplicationInitializer extends AbstractSecurityWebApplicationInitializer {
  public SecurityWebApplicationInitializer() {
     System.out.println("SecurityWebApplicationInitializer");
  }
}
