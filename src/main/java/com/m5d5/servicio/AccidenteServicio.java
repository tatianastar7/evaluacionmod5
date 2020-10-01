package com.m5d5.servicio;

import java.util.List;


import com.m5d5.dao.Accidente;




public interface AccidenteServicio {

	Accidente findAccidenteByid(int idaccidente);
	List<Accidente> listarAccidente();
	void agregarAccidente(Accidente acci);
	void eliminarAccidente(int idaccidente);
	void editarAccidente(Accidente acci);
	//List<Accidente> listarAccidenteporcliente(int cliente_id);
	
	}
