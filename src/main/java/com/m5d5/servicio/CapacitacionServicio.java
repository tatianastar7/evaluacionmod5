package com.m5d5.servicio;
import java.util.List;

import com.m5d5.dao.Capacitacion;

public interface CapacitacionServicio {
	Capacitacion findCapacitacionByid(int idcapacitacion);
	List<Capacitacion> listarCapacitacion();
	void agregarCapacitacion(Capacitacion cap);
	void eliminarCapacitacion(int idcapacitacion);
	void editarCapacitacion(Capacitacion cap);
}