package pe.edu.upeu.planilla.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pe.edu.upeu.planilla.model.PersonaDTO;


@Controller
@RequestMapping("/")
public class HomeController {

	/*

	@GetMapping("home")
	public String hello() {
		return "index";
	}
	*/
	
	
	@GetMapping("/login")
	public ModelAndView hello(HttpServletRequest request, HttpServletResponse response,@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {
		/*Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth.isAuthenticated()) {
			System.out.println("EstÃ¡ autenticado");
			return "menu";
		} else {
			System.out.println("No estÃ¡ autenticado");
			return "login";
		}*/
		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Usuario y/o contraseña incorrecta!");
		}

		if (logout != null) {
			model.addObject("msg", "Has cerrado sesión.");
		}
		model.setViewName("login");
		
		return model;
	}

	@GetMapping(value = { "menu", "/"  })
	public String menu(HttpServletRequest request, HttpServletResponse response, Authentication authentication) {
		String Rol = ((PersonaDTO) authentication.getPrincipal()).getTipo_doc();
		String pagina="";
		HttpSession session = request.getSession(true);
		System.out.println(Rol);
		if(Rol.equals("1")) {
			System.out.println("redireccionar a home");
			session.setAttribute("ModE", "1");
			pagina = "home";
		}
		else {
			pagina = "index";
		}
		return pagina;
	}
	
	
	@GetMapping("/logout")
	public void logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
			System.out.println("Logged Out Successfully!");
		}
		try {
			response.sendRedirect("login?logout");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@GetMapping("home")
	public String home() {
		String pagina = "home";
		return pagina;
	}
	
}
