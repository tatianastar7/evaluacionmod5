package com.m5d5.servicio;

import java.util.List;
import com.m5d5.dao.Mejora;

public interface MejoraServicio {
	
	Mejora findMejoraByid(int idmejora);
	List<Mejora> listarMejora();
	void agregarMejora(Mejora mes);
	void eliminarMejora(int idmejora);
}