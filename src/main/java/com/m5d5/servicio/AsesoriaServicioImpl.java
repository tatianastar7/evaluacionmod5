package com.m5d5.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.m5d5.dao.AsesoriaRepositorio;
import com.m5d5.dao.Asesoria;

@Service
public class AsesoriaServicioImpl implements AsesoriaServicio {

	@Autowired
	AsesoriaRepositorio asr;
	
	@Override
	public Asesoria findAsesoriaByid(int idasesoria) {
		return asr.findOne(idasesoria);
	}

	@Override
	public List<Asesoria> listarAsesoria() {
		return (List<Asesoria>) asr.findAll();
	}

	@Override
	public void agregarAsesoria(Asesoria as) {
		asr.save(as);
	}

	@Override
	public void eliminarAsesoria(int idasesoria) {
		asr.delete(idasesoria);
	}

	@Override
	public void editarAsesoria(Asesoria as) {
		asr.save(as);
	}


		
	}


