package com.m5d5.dao;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
@Entity
@Table(name="Capacitaciones")
public class Capacitacion {
	@Id
	@Column(name="idcapacitacion")	
	@SequenceGenerator(name = "CapacitacionesIdGenerator", sequenceName = "CAPACITACIONES_SEQ")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CapacitacionesIdGenerator")
	private int idcapacitacion;
	private String fecha;
	private String hora;
	private int numasistentes;
	private int idvisita;
	
	
	public Capacitacion () {
		super ();
	}
	
	public Capacitacion(String fecha, String hora, int numasistentes, int idvisita) {
		super ();
		this.fecha = fecha;
		this.hora = hora;
		this.numasistentes = numasistentes;
		this.idvisita = idvisita;
	}
	public int getIdcapacitacion() {
		return idcapacitacion;
	}
	public void setIdcapacitacion(int idcapacitacion) {
		this.idcapacitacion = idcapacitacion;
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
	public int getNumasistentes() {
		return numasistentes;
	}
	public void setNumasistentes(int numasistentes) {
		this.numasistentes = numasistentes;
	}
	public int getIdvisita() {
		return idvisita;
	}
	public void setIdvisita(int idvisita) {
		this.idvisita = idvisita;
	}
	@Override
	public String toString() {
		return "Capacitacion [idcapacitacion=" + idcapacitacion + ", fecha=" + fecha + ", hora=" + hora
				+ ", numasistentes=" + numasistentes + ", visitaid=" + idvisita + "]";
	}
	
	
	
}