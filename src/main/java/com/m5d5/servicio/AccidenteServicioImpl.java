package com.m5d5.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.m5d5.dao.AccidenteRepositorio;
import com.m5d5.dao.Accidente;

@Service
public class AccidenteServicioImpl implements AccidenteServicio {

	@Autowired
	AccidenteRepositorio ar;
	
	@Override
	public Accidente findAccidenteByid(int idaccidente) {
		return ar.findOne(idaccidente);
	}

	@Override
	public List<Accidente> listarAccidente() {
		return (List<Accidente>) ar.findAll();
	}

	@Override
	public void agregarAccidente(Accidente acci) {
		ar.save(acci);
	}

	@Override
	public void eliminarAccidente(int idaccidente) {
		ar.delete(idaccidente);
	}

	@Override
	public void editarAccidente(Accidente acci) {
		ar.save(acci);
	}

//	@Override
//	public List<Accidente> listarAccidenteporcliente(int cliente_id) {
//			return ar.findAllByClienteidOrderByIdaccidente(cliente_id);
//	}

					
}
