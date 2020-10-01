package com.m5d5.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.m5d5.dao.Cliente;
import com.m5d5.dao.ClienteRepositorio;



@Service
public class ClienteServicioImpl implements ClienteServicio {

	@Autowired
	ClienteRepositorio cr;
	
	@Override
	public Cliente findClienteByid(int id) {
		return cr.findOne(id);
	}

	@Override
	public List<Cliente> listarCliente() {
		return (List<Cliente>) cr.findAll();
	}

	@Override
	public void agregarCliente(Cliente cli) {
		cr.save(cli);
	}

	@Override
	public void eliminarCliente(int id) {
		cr.delete(id);
	}

	@Override
	public void editarCliente(Cliente cli) {
		cr.save(cli);
	}

	
}
