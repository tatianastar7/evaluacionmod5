package com.m5d5.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.m5d5.dao.Mejora;
import com.m5d5.dao.Cliente;
import com.m5d5.servicio.ClienteServicio;
import com.m5d5.servicio.MejoraServicio;

@Controller
public class MejoraControlador {
	
	@Autowired
	MejoraServicio mes;
	
	@Autowired
	ClienteServicio cs;
	
	
	   @RequestMapping("/mejorform")
	    public String showform(Model m){
	        m.addAttribute("mejora", new Mejora());
	        List<Cliente> list=cs.listarCliente();
	        m.addAttribute("listaditoclientes",list);
	        return "mejorform";
	    }
	    @RequestMapping(value="/savemejor",method = RequestMethod.POST)
	    public String save(@ModelAttribute("mes") Mejora me){
	        mes.agregarMejora(me);
	        return "redirect:/viewmejor";
	    }
	   
	    @RequestMapping("/viewmejor")
	    public String viewmejora(Model m){
	        List<Mejora>list=mes.listarMejora();
	        m.addAttribute("listaditos",list);
	        return "viewmejor";
	    }
	   
	    @RequestMapping(value="/deletemejor/{id}",method = RequestMethod.GET)
	    public String delete(@PathVariable int id){
	        mes.eliminarMejora(id);
	        return "redirect:/viewmejor";
	    }
	}