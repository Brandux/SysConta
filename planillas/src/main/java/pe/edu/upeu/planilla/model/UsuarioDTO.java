package pe.edu.upeu.planilla.model;

public class UsuarioDTO {

	private int idusuario;
	private String usuario;
	private String contraseña;
	private String fecha;
	private String fecha_act;
	
	private int idrol;
	
	public UsuarioDTO() {
		super();
	}

	public int getIdusuario() {
		return idusuario;
	}

	public void setIdusuario(int idusuario) {
		this.idusuario = idusuario;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getContraseña() {
		return contraseña;
	}

	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getFecha_act() {
		return fecha_act;
	}

	public void setFecha_act(String fecha_act) {
		this.fecha_act = fecha_act;
	}

	public int getIdrol() {
		return idrol;
	}

	public void setIdrol(int idrol) {
		this.idrol = idrol;
	}

	
}
