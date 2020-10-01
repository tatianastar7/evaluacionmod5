package com.m5d5.servicio;

import java.util.List;

import com.m5d5.dao.Asesoria;


public interface AsesoriaServicio {

	Asesoria findAsesoriaByid(int idasesoria);
	List<Asesoria> listarAsesoria();
	void agregarAsesoria(Asesoria as);
	void eliminarAsesoria(int idasesoria);
	void editarAsesoria(Asesoria as);
}

