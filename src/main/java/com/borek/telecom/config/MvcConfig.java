package com.borek.telecom.config;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.core.Ordered;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.borek.telecom.entity.Account;
import com.borek.telecom.entity.User;

/**
 * @author Piotr Borek
 *
 */
@EnableWebMvc
@Configuration
@ComponentScan(basePackages = {"com.borek.telecom.*"})
@EnableTransactionManagement
//@Import(SecurityConfig.class)
public class MvcConfig extends WebMvcConfigurerAdapter {
	
	 @Override
	    public void addResourceHandlers(ResourceHandlerRegistry registry) {
	        registry.addResourceHandler("/assets/**").addResourceLocations("classpath:/META-INF/resources/webjars/").setCachePeriod(31556926);
	        registry.addResourceHandler("/css/**").addResourceLocations("/css/").setCachePeriod(31556926);
	        registry.addResourceHandler("/img/**").addResourceLocations("/img/").setCachePeriod(31556926);
	        registry.addResourceHandler("/js/**").addResourceLocations("/js/").setCachePeriod(31556926);
	    }
	 
	 @Override
	    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
	        configurer.enable();
	    }
	 
	 @Override
	    public void addViewControllers(ViewControllerRegistry registry) {
	        registry.addViewController("/login").setViewName("login");
	        registry.setOrder(Ordered.HIGHEST_PRECEDENCE);
	    }
	 
	 @Bean
		public InternalResourceViewResolver viewResolver() {
		    InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		    viewResolver.setViewClass(JstlView.class);
		    viewResolver.setPrefix("/pages/");
		    viewResolver.setSuffix(".jsp");
		    return viewResolver;
		}
	 
	 
	 @Bean(name = "dataSource")
	 public DataSource getDataSource() {
	     BasicDataSource dataSource = new BasicDataSource();
	     dataSource.setDriverClassName("com.mysql.jdbc.Driver");
	     dataSource.setUrl("jdbc:mysql://localhost:3306/telecom");
	     dataSource.setUsername("root");
	     dataSource.setPassword("");
	  
	     return dataSource;
	 }
	 
	 @Autowired
	 @Bean(name = "sessionFactory")
	 public SessionFactory getSessionFactory(DataSource dataSource) {
	  
	     LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
	  
	     sessionBuilder.addAnnotatedClasses(Account.class,User.class);
	    
	     return sessionBuilder.buildSessionFactory();
	 }
	
	 @Autowired
	 @Bean(name = "transactionManager")
	 public HibernateTransactionManager getTransactionManager(
	         SessionFactory sessionFactory) {
	     HibernateTransactionManager transactionManager = new HibernateTransactionManager(
	             sessionFactory);
	  
	     return transactionManager;
	 }
}