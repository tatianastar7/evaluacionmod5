package com.m5d5.servicio;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.m5d5.dao.Capacitacion;
import com.m5d5.dao.CapacitacionRepositorio;
@Service
public class CapacitacionServicioImpl implements CapacitacionServicio {
	
	@Autowired
	CapacitacionRepositorio car;
	
	@Override
	public Capacitacion findCapacitacionByid(int idcapacitacion) {
		return car.findOne(idcapacitacion);
	}
	@Override
	public List<Capacitacion> listarCapacitacion() {
		return (List<Capacitacion>) car.findAll();
	}
	@Override
	public void agregarCapacitacion(Capacitacion cap) {
		car.save(cap);
	}
	@Override
	public void eliminarCapacitacion(int idcapacitacion) {
		car.delete(idcapacitacion);
	}
	@Override
	public void editarCapacitacion(Capacitacion cap) {
		car.save(cap);
	}
}