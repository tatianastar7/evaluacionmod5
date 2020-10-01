package com.m5d5.servicio;

import java.util.List;

import com.m5d5.dao.Pago;




public interface PagoServicio {

	Pago findPagoByid(int idpago);
	List<Pago> listarPago();
	void agregarPago(Pago pa);
	void eliminarPago(int idpago);
	void editarPago(Pago pa);
}

