package pe.edu.upeu.planilla.config;


import java.util.Map;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pe.edu.upeu.planilla.dao.PersonaDAO;
import pe.edu.upeu.planilla.model.PersonaDTO;

@Service("Service")
@Transactional(readOnly=true)
public class UserDetailsServiceImpl implements UserDetailsService{

	
	
	private PersonaDAO pao = new PersonaDAO(AppConfig.getDataSource());
	
	@Override
	public PersonaDTO loadUserByUsername(String User) throws UsernameNotFoundException {
		//Aqui va los datos del usuario 
		Map<String, Object> userinfo = pao.getByUserName(User);
		PersonaDTO user = new PersonaDTO(userinfo, true, true,true,true);
		System.out.println("loadByUsername is running");
		return  user;
	}

}
