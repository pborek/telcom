package com.borek.telecom.config;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class MvcWebApplicationInitializer extends
        AbstractAnnotationConfigDispatcherServletInitializer {

  @Override
  protected Class<?>[] getRootConfigClasses() {
    return new Class[] {SecurityConfig.class, MvcConfig.class};

  }

  @Override
  protected Class<?>[] getServletConfigClasses() {
    return new Class<?>[] {MvcConfig.class};
  }

  @Override
  protected String[] getServletMappings() {
    return new String[] {"/"};
  }
  
}
