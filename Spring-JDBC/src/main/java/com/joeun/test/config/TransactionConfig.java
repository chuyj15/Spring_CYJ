package com.joeun.test.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
public class TransactionConfig {
	 @Bean
     public FooRepository fooRepository() {
         // configure and return a class having @Transactional methods
         return new JdbcFooRepository(dataSource());
     }

     @Bean
     public DataSource dataSource() {
    	 DriverManagetDataSource dataSource = new DriverManagerDataSource();
    	 
     }

     @Bean
     public PlatformTransactionManager txManager() {
         return new DataSourceTransactionManager(dataSource());
     }

}
