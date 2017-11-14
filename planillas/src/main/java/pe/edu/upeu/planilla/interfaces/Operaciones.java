package pe.edu.upeu.planilla.interfaces;

import java.util.ArrayList;
import java.util.Map;

public interface Operaciones {

	//crud
	public ArrayList<Map<String, Object>> listar();

    public boolean add(Object o);

    public boolean edit(Object o);

    public boolean delete(Object o);
}
