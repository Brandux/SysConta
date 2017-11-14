package pe.edu.upeu.planilla.config;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;

import pe.edu.upeu.planilla.model.PersonaDTO;

public class CustomAuthenticationProvider implements AuthenticationProvider {


	@Autowired
	private UserDetailsServiceImpl Service = new UserDetailsServiceImpl();
	
	@Autowired
	public CustomAuthenticationProvider() {
	}


	@Override
	public Authentication authenticate(Authentication auth) throws AuthenticationException {
		// Configuracion de autentificacion
		System.out.println("Ingresando a CustomAuthenticationProvider");
		System.out.println("no entre");
		String username =auth.getName();
		System.out.println(auth.getName());
		String password = (String) auth.getCredentials();
		System.out.println((String) auth.getCredentials());
		PersonaDTO user;

		try {
			user = Service.loadUserByUsername(username);
		} catch (DataAccessException dae) {
			throw new BadCredentialsException("Username not found.");
		}
		System.out.println(user.getPassword());

		if (user == null || !user.getUsername().equalsIgnoreCase(username)) {
			System.out.println("Usuario no encontrado");
			throw new BadCredentialsException("Username not found.");
		} else {

			if (!password.equals(user.getPassword())) {
				System.out.println("contraseña incorrecta");
				throw new BadCredentialsException("Wrong password.");
			} else {
				Collection<? extends GrantedAuthority> authorities = user.getAuthorities();
				System.out.println(user.getAuthorities());
				UsernamePasswordAuthenticationToken upat = new UsernamePasswordAuthenticationToken(user, password,authorities);
				System.out.println(upat.getName());
				return upat;
			}
		}
	}

	@Override
	public boolean supports(Class<?> auth) {
		// TODO Auto-generated method stub
		return true;
	}

}
