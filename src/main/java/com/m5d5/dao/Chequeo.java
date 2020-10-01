package com.m5d5.dao;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
@Entity
@Table(name="Chequeo")
public class Chequeo {
	@Id
	@Column(name="idchequeo")	
	@SequenceGenerator(name = "ChequeoIdGenerator", sequenceName = "CHEQUEO_SEQ")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ChequeoIdGenerator")
	private int idchequeo;
	private String detalle;
	private String estado;
	private int idvisita;
	
	public Chequeo(){
		super ();
	}
	
	public Chequeo(String detalle, String estado, int idvisita) {
		super ();
		this.detalle = detalle;
		this.estado = estado;
		this.idvisita = idvisita;
	}
	public int getIdchequeo() {
		return idchequeo;
	}
	public void setIdchequeo(int idchequeo) {
		this.idchequeo = idchequeo;
	}
	public String getDetalle() {
		return detalle;
	}
	public void setDetalle(String detalle) {
		this.detalle = detalle;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public int getidvisita() {
		return idvisita;
	}
	public void setidvisita(int idvisita) {
		this.idvisita = idvisita;
	}
	
	@Override
	public String toString() {
		return "Chequeo [idchequeo=" + idchequeo + ", detalle=" + detalle + ", estado=" + estado + ", visitaid="
				+ idvisita + "]";
	}
}





