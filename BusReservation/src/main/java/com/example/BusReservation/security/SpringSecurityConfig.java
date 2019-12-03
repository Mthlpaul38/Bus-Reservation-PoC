
  package com.example.BusReservation.security;
  

  
  import org.springframework.beans.factory.annotation.Autowired; import
  org.springframework.context.annotation.Bean; import
  org.springframework.context.annotation.Configuration; import
  org.springframework.http.HttpMethod; import
  org.springframework.security.config.annotation.authentication.builders.
  AuthenticationManagerBuilder; import
  org.springframework.security.config.annotation.web.builders.HttpSecurity;
  import
  org.springframework.security.config.annotation.web.builders.WebSecurity;
  import org.springframework.security.config.annotation.web.configuration.
  EnableWebSecurity; import
  org.springframework.security.config.annotation.web.configuration.
  WebSecurityConfigurerAdapter; import
  org.springframework.security.config.http.SessionCreationPolicy; import
  org.springframework.security.core.userdetails.User; import
  org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder; import
  org.springframework.security.crypto.password.PasswordEncoder; import
  org.springframework.security.web.session.HttpSessionEventPublisher;
  
  @Configuration
  
  @EnableWebSecurity public class SpringSecurityConfig extends
  WebSecurityConfigurerAdapter {
  
 // @Autowired DataSource dataSource;
  
  
  
	/*
	 * @Bean public BCryptPasswordEncoder getEncoder() { return new
	 * BCryptPasswordEncoder(12); }
	 */
  
  @Override public void configure(HttpSecurity http) throws Exception {
  
  
  
  
  //http.authorizeRequests().antMatchers("/**").permitAll().anyRequest().
  //authenticated().and().csrf().disable();
  
  http.authorizeRequests().antMatchers("/admin/**").hasRole("ADMIN") .and()
  .formLogin().loginPage("/adminlogin").defaultSuccessUrl("/admin").failureUrl(
  "/error") .usernameParameter("id").passwordParameter("password") .and()
  .logout().logoutUrl("/logout")
  .logoutSuccessUrl("/perform_logout").and().csrf().disable(); }
  
  
  
  @Override protected void configure(AuthenticationManagerBuilder auth) throws
  Exception { auth .inMemoryAuthentication()
  .withUser("admin").password("{noop}admin@password").roles("ADMIN");
  
  }
  
  
  
  @Bean public HttpSessionEventPublisher httpSessionEventPublisher() { return
  new HttpSessionEventPublisher();
  
  
  }
  
  }
  
  
  
  
 

//WORKING EXAMPLE


/*
 * package com.token.tokenExample.security; import javax.sql.DataSource;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.security.config.annotation.authentication.builders.
 * AuthenticationManagerBuilder; import
 * org.springframework.security.config.annotation.web.builders.HttpSecurity;
 * import org.springframework.security.config.annotation.web.configuration.
 * EnableWebSecurity; import
 * org.springframework.security.config.annotation.web.configuration.
 * WebSecurityConfigurerAdapter; import
 * org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
 * 
 * @EnableWebSecurity public class SpringSecurityConfig extends
 * WebSecurityConfigurerAdapter {
 * 
 * @Autowired private DataSource dataSource;
 * 
 * @Override protected void configure(AuthenticationManagerBuilder auth) throws
 * Exception {
 * 
 * auth.jdbcAuthentication().dataSource(dataSource)
 * .usersByUsernameQuery("select username, password, enabled" +
 * " from users where username=?")
 * .authoritiesByUsernameQuery("select username, authority " +
 * "from authorities where username=?") .passwordEncoder(new
 * BCryptPasswordEncoder()); }
 * 
 * @Override protected void configure(HttpSecurity http) throws Exception {
 * 
 * http.authorizeRequests().anyRequest().hasAnyRole("ADMIN", "USER") .and()
 * .httpBasic(); // Authenticate users with HTTP basic authentication } }
 */