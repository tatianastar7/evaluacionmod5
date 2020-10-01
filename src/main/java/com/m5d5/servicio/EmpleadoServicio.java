package com.m5d5.servicio;

import java.util.List;

import com.m5d5.dao.Empleado;




public interface EmpleadoServicio {

	Empleado findEmpleadoByid(int idempleado);
	List<Empleado> listarEmpleado();
	void agregarEmpleado(Empleado emp);
	void eliminarEmpleado(int idempleado);
	void editarEmpleado(Empleado em);
}

