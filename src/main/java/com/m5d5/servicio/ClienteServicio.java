package com.m5d5.servicio;

import java.util.List;

import com.m5d5.dao.Cliente;




public interface ClienteServicio {

	Cliente findClienteByid(int id);
	List<Cliente> listarCliente();
	void agregarCliente(Cliente cli);
	void eliminarCliente(int id);
	void editarCliente(Cliente cli);
}
