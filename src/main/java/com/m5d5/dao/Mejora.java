package com.m5d5.dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="Mejoras")
public class Mejora {

	@Id
	@Column(name="idmejora")
	@SequenceGenerator(name = "MejorasIdGenerator", sequenceName = "MEJORAS_SEQ")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "MejorasIdGenerator")
	private int idmejora;
	private String fecha;
	private String motivo;
	private String actividades;
	private String estado;
	private int cliente_id;
	
	public Mejora() {
		super();
	}
	
	
	public Mejora(String fecha, String motivo, String actividades, String estado, int cliente_id) {
		super ();
		this.fecha = fecha;
		this.motivo = motivo;
		this.actividades = actividades;
		this.estado = estado;
		this.cliente_id = cliente_id;
	}



	public int getIdmejora() {
		return idmejora;
	}



	public void setIdmejora(int idmejora) {
		this.idmejora = idmejora;
	}



	public String getFecha() {
		return fecha;
	}



	public void setFecha(String fecha) {
		this.fecha = fecha;
	}



	public String getMotivo() {
		return motivo;
	}



	public void setMotivo(String motivo) {
		this.motivo = motivo;
	}



	public String getActividades() {
		return actividades;
	}



	public void setActividades(String actividades) {
		this.actividades = actividades;
	}



	public String getEstado() {
		return estado;
	}



	public void setEstado(String estado) {
		this.estado = estado;
	}



	public int getClienteid() {
		return cliente_id;
	}



	public void setClienteid(int clienteid) {
		this.cliente_id = clienteid;
	}



	@Override
	public String toString() {
		return "Mejora [idmejora=" + idmejora + ", fecha=" + fecha + ", motivo=" + motivo + ", actividades="
				+ actividades + ", estado=" + estado + ", clienteid=" + cliente_id + "]";
	}
	
	

}
