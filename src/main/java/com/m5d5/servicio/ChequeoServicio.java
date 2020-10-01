package com.m5d5.servicio;

import java.util.List;

import com.m5d5.dao.Chequeo;

public interface ChequeoServicio {
	Chequeo findChequeoByid(int idchequeo);
	List<Chequeo> listarChequeo();
	void agregarChequeo(Chequeo che);
	void eliminarChequeo(int idchequeo);
}