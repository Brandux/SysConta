package pe.edu.upeu.planilla.model;

public class UsuarioDTO {

	private int idusuario;
	private String usuario;
	private String contrase�a;
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

	public String getContrase�a() {
		return contrase�a;
	}

	public void setContrase�a(String contrase�a) {
		this.contrase�a = contrase�a;
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
