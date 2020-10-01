package com.m5d5.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.m5d5.dao.Empleado;
import com.m5d5.dao.EmpleadoRepositorio;



@Service
public class EmpleadoServicioImpl implements EmpleadoServicio {

	@Autowired
	EmpleadoRepositorio emr;
	
	@Override
	public Empleado findEmpleadoByid(int idempleado) {
		return emr.findOne(idempleado);
	}

	@Override
	public List<Empleado> listarEmpleado() {
		return (List<Empleado>) emr.findAll();
	}

	@Override
	public void agregarEmpleado(Empleado emp) {
		emr.save(emp);
	}

	@Override
	public void eliminarEmpleado(int idempleado) {
		emr.delete(idempleado);
	}

	@Override
	public void editarEmpleado(Empleado em) {
		emr.save(em);
	}

}
