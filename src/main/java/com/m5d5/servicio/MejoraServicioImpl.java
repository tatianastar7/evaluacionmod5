package com.m5d5.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.m5d5.dao.Mejora;
import com.m5d5.dao.MejoraRepositorio;

@Service
public  class MejoraServicioImpl implements MejoraServicio{
	
	@Autowired
	MejoraRepositorio mer;
	
	@Override
	public Mejora findMejoraByid(int idmejora) {
		return mer.findOne(idmejora);
	}
	@Override
	public List<Mejora> listarMejora() {
		return (List<Mejora>) mer.findAll();
	}
	
	@Override
	public void agregarMejora(Mejora mes) {
		mer.save(mes);
	}
	@Override
	public void eliminarMejora(int idmejora) {
		mer.delete(idmejora);
	}
}