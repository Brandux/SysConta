package pe.edu.upeu.planilla.controller;

import javax.sql.DataSource;

import org.springframework.stereotype.Controller;

import pe.edu.upeu.planilla.config.AppConfig;

@Controller
public class ControllerGeneral {

	DataSource d = AppConfig.getDataSource();
	
}
