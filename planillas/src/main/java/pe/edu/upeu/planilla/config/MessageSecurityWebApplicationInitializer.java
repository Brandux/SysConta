package pe.edu.upeu.planilla.config;


import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;


public class MessageSecurityWebApplicationInitializer  extends AbstractSecurityWebApplicationInitializer {
		public MessageSecurityWebApplicationInitializer() {
			super(SecurityConfig.class);
		}
}
