package com.m5d5.servicio;
import java.util.List;
import com.m5d5.dao.Visita;

public interface VisitaServicio {
	Visita findVisitaByid(int idvisita);
	List<Visita> listarVisita();
	void agregarVisita(Visita vis);
	void eliminarVisita(int idvisita);
	
}