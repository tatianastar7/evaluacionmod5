package com.m5d5.dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="Accidentes")
public class Accidente {

	@Id
	@Column(name="idaccidente")	
	@SequenceGenerator(name = "AccidentesIdGenerator", sequenceName = "ACCIDENTES_SEQ")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "AccidentesIdGenerator")
	private int idaccidente;
	private String fecha;
	private String hora;
	private String suceso;
	private String lugar;
	private int cliente_id;
	

	
	public Accidente(String fecha, String hora, String suceso, String lugar, int cliente_id) {
		super();
		this.fecha = fecha;
		this.hora = hora;
		this.suceso = suceso;
		this.lugar = lugar;
		this.cliente_id = cliente_id;
	}

	public Accidente() {
		super();
	}
	
	public int getIdaccidente() {
		return idaccidente;
	}


	public void setIdaccidente(int idaccidente) {
		this.idaccidente = idaccidente;
	}


	public String getFecha() {
		return fecha;
	}




	public void setFecha(String fecha) {
		this.fecha = fecha;
	}




	public String getHora() {
		return hora;
	}




	public void setHora(String hora) {
		this.hora = hora;
	}




	public String getSuceso() {
		return suceso;
	}




	public void setSuceso(String suceso) {
		this.suceso = suceso;
	}




	public String getLugar() {
		return lugar;
	}




	public void setLugar(String lugar) {
		this.lugar = lugar;
	}




	public int getClienteid() {
		return cliente_id;
	}


	public void setClienteid(int clienteid) {
		this.cliente_id = clienteid;
	}
	@Override
	public String toString() {
		return "Accidente [idaccidente=" + idaccidente + ", fecha=" + fecha + ", hora=" + hora + ", suceso=" + suceso
				+ ", lugar=" + lugar + ", clienteid=" + cliente_id + "]";
	}

}
