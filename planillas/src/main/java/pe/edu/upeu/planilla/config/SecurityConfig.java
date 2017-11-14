package pe.edu.upeu.planilla.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
		auth.authenticationProvider(authenticationProvider());
	}
	
	// Se asignan todos lo permisos que contendra la aplicacion y define la pagina publica
	@Override
	protected void configure(HttpSecurity http) throws Exception{
		
		http.authorizeRequests()
		.antMatchers("/resources/**").permitAll().anyRequest().authenticated()
		.and()
			.formLogin()
				.loginPage("/login")
				.permitAll()
		.and()
			.logout()
			.permitAll()
			.deleteCookies("JSESSIONID")
		.and()
			.rememberMe()
			.rememberMeParameter("remember-me-param")
			.rememberMeCookieName("my-remember-me")
			.tokenValiditySeconds(86400);
	}

	
	public CustomAuthenticationProvider authenticationProvider() {
		CustomAuthenticationProvider authProvider = new CustomAuthenticationProvider();
		return authProvider;
	}
	
}
