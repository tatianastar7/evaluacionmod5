package com.m5d5.dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="Pagos")
public class Pago {


	@Id
	@Column(name="idpago")	
	@SequenceGenerator(name = "PagosIdGenerator", sequenceName = "PAGOS_SEQ")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "PagosIdGenerator")
	private int idpago;
	
	private String mesanio;
	private int montoregular;
	private int montoadicionales;
	private int cliente_id;
	
	
	public Pago() {
		super();
	}
	
	public Pago(String mesanio, int montoregular, int montoadicionales, int cliente_id) {
		super ();
		this.mesanio = mesanio;
		this.montoregular = montoregular;
		this.montoadicionales = montoadicionales;
		this.cliente_id = cliente_id;
	}



	public int getIdpago() {
		return idpago;
	}



	public void setIdpago(int idpago) {
		this.idpago = idpago;
	}



	public String getMesanio() {
		return mesanio;
	}



	public void setMesanio(String mesanio) {
		this.mesanio = mesanio;
	}



	public int getMontoregular() {
		return montoregular;
	}



	public void setMontoregular(int montoregular) {
		this.montoregular = montoregular;
	}



	public int getMontoadicionales() {
		return montoadicionales;
	}



	public void setMontoadicionales(int montoadicionales) {
		this.montoadicionales = montoadicionales;
	}



	public int getCliente_id() {
		return cliente_id;
	}



	public void setCliente_id(int cliente_id) {
		this.cliente_id = cliente_id;
	}



	@Override
	public String toString() {
		return "Pago [idpago=" + idpago + ", mesanio=" + mesanio + ", montoregular=" + montoregular
				+ ", montoadicionales=" + montoadicionales + ", cliente_id=" + cliente_id + "]";
	}
	
	
	
}
