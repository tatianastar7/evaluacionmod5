package com.m5d5.controladores;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.m5d5.dao.Cliente;
import com.m5d5.dao.ClienteXml;
import com.m5d5.dao.ClienteXmlLista;
import com.m5d5.servicio.ClienteServicio;

@RestController
public class ClienteXmlControlador {

	@Autowired
	ClienteServicio cs;

	@RequestMapping(value = "/clilistxml", method = RequestMethod.GET, headers = "Accept=application/xml")
	public ClienteXmlLista getClientes() {
		ClienteXmlLista clientesxml = new ClienteXmlLista();
		List<Cliente> listacli = cs.listarCliente();
		List<ClienteXml> listaclixml = new ArrayList<ClienteXml>();

		for (int i = 0; i < listacli.size(); i++) {
			Cliente c = listacli.get(i);
			ClienteXml cx = new ClienteXml();
			cx.setId(c.getId());
			cx.setNombre(c.getNombre());
			cx.setRubro(c.getRubro());
			cx.setTelefono(c.getTelefono());
			cx.setCorreoelectronico(c.getCorreoelectronico());
			cx.setDireccion(c.getDireccion());
			listaclixml.add(cx);
		}

		clientesxml.setListaclientes(listaclixml);
		return clientesxml;
	}

}
