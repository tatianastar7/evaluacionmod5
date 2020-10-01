package com.m5d5.dao;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
@Entity
@Table(name="Visitas")
public class Visita {
	@Id
	@Column(name="idvisita")	
	@SequenceGenerator(name = "VisitasIdGenerator", sequenceName = "VISITAS_SEQ")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "VisitasIdGenerator")
	private int idvisita;
	private String direccion;
	private String ciudad;
	private String fecha;
	private String resumen;
	private String observaciones;
	private int cliente_id;
	private int empleado_idempleado;
	
	
	public Visita(int idvisita, String direccion, String ciudad, String fecha, String resumen, String observaciones,
			int cliente_id, int empleado_idempleado) {
		super();
		this.idvisita = idvisita;
		this.direccion = direccion;
		this.ciudad = ciudad;
		this.fecha = fecha;
		this.resumen = resumen;
		this.observaciones = observaciones;
		this.cliente_id = cliente_id;
		this.empleado_idempleado = empleado_idempleado;
	}
	public Visita() {
	       super();
	}
	public int getIdvisita() {
		return idvisita;
	}
	public void setIdvisita(int idvisita) {
		this.idvisita = idvisita;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getCiudad() {
		return ciudad;
	}
	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	public String getResumen() {
		return resumen;
	}
	public void setResumen(String resumen) {
		this.resumen = resumen;
	}
	public String getObservaciones() {
		return observaciones;
	}
	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}
	public int getClienteid() {
		return cliente_id;
	}
	public void setClienteid(int cliente_id) {
		this.cliente_id = cliente_id;
	}
	public int getEmpleadoid() {
		return empleado_idempleado;
	}
	public void setEmpleadoid(int empleadoid) {
		this.empleado_idempleado = empleadoid;
	}
	@Override
	public String toString() {
		return "Visita [idvisita=" + idvisita + ", direccion=" + direccion + ", ciudad=" + ciudad + ", fecha=" + fecha
				+ ", resumen=" + resumen + ", observaciones=" + observaciones + ", cliente_id=" + cliente_id
				+ ", empleadoid=" + empleado_idempleado + "]";
	}
	
	
	
	
}