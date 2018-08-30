package com.miladavukovic.diplomski.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	// add a reference to our security data source
	
		@Autowired
		private DataSource securityDataSource;
		
		
		@Override
		protected void configure(AuthenticationManagerBuilder auth) throws Exception {

			// use jdbc authentication 
			
			auth.jdbcAuthentication().dataSource(securityDataSource);
			
		}
		//this is needed in order to allow access to static resources, otherwise, Spring Security will block them
		@Override
		public void configure(WebSecurity web) throws Exception {
		  web.ignoring().antMatchers("/resources/**");
		}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		//add Spring Security support for login and logout and user authentication

		http.authorizeRequests()
				.anyRequest().authenticated()
			.and()
			.formLogin()
				.loginPage("/showMyLoginPage")
				.loginProcessingUrl("/authenticateTheUser")
				.permitAll()
			.and()
			.logout().permitAll();
		
	}
		
}






