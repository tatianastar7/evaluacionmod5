package com.m5d5.dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="Empleado")
public class Empleado {

	@Id
	@Column(name="idempleado")	
	@SequenceGenerator(name = "EmpleadoIdGenerator", sequenceName = "EMPLEADO_SEQ")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "EmpleadoIdGenerator")
	private int idempleado;
	
	@Column(name="nombre")	
	private String nombre;
	
	@Column(name="especialidad")	
	private String especialidad;
	
	
	
	public Empleado() {
		super();
	}



	public Empleado(int idempleado, String nombre, String especialidad) {
		super();
		this.idempleado = idempleado;
		this.nombre = nombre;
		this.especialidad = especialidad;
	}



	public int getIdempleado() {
		return idempleado;
	}



	public void setIdempleado(int idempleado) {
		this.idempleado = idempleado;
	}



	public String getNombre() {
		return nombre;
	}



	public void setNombre(String nombre) {
		this.nombre = nombre;
	}



	public String getEspecialidad() {
		return especialidad;
	}



	public void setEspecialidad(String especialidad) {
		this.especialidad = especialidad;
	}



	@Override
	public String toString() {
		return "Empleado [idempleado=" + idempleado + ", nombre=" + nombre + ", especialidad=" + especialidad + "]";
	}
	
	
	
}
