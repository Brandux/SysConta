package pe.edu.upeu.planilla.test;

import java.util.ArrayList;
import java.util.Map;

import javax.sql.DataSource;

import pe.edu.upeu.planilla.config.AppConfig;
import pe.edu.upeu.planilla.dao.PersonaDAO;


public class toshi {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		conect();
		validar();
	}
	
	
	public static void conect() {
		DataSource d = AppConfig.getDataSource();

		if (d != null) {
			System.out.println("Conectado");
		} else {
			System.out.println("No se pudo conectar");
		}
	}
	
	public static void validar () {
		DataSource d = AppConfig.getDataSource();

		PersonaDAO a = new PersonaDAO(d);
		
		ArrayList<Map<String, Object>> sas = a.validar("Brandux", "123");
		System.out.println(sas);
		
		Map<String, Object> lis = a.getByUserName("Brandux");
		System.out.println(lis);
	}

}
