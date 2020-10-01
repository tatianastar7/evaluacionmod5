package com.m5d5.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.m5d5.dao.Asesoria;
import com.m5d5.dao.Cliente;
import com.m5d5.servicio.AsesoriaServicio;
import com.m5d5.servicio.ClienteServicio;

@Controller
public class AsesoriaControlador {

	@Autowired
	AsesoriaServicio ass;
	
	@Autowired
	ClienteServicio cs;
	
    @RequestMapping("/aseform")    
    public String showform(Model m){
        m.addAttribute("asesoria", new Asesoria());
        List<Cliente> list=cs.listarCliente();
        m.addAttribute("listaclientes",list);  
        return "aseform";
    } 

    @RequestMapping("/VisualizarActividad")
        public String showform2(Model m){
            m.addAttribute("command", new Asesoria());
            List<Cliente> list=cs.listarCliente();
            m.addAttribute("listcliente", list);
            return "VisualizarActividad";
    } 
    @RequestMapping(value="/savease",method = RequestMethod.POST)    
    public String save(@ModelAttribute("ase") Asesoria ase){    
        ass.agregarAsesoria(ase);
        return "redirect:/viewase";
    }
    
    @RequestMapping("/viewase")    
    public String viewase(Model m){    
        List<Asesoria> list=ass.listarAsesoria();
        m.addAttribute("lista",list);  
        return "viewase";
    }
    
    @RequestMapping(value="/editase/{id}")    
    public String edit(@PathVariable int id, Model m){    
    	Asesoria ase=ass.findAsesoriaByid(id);
        m.addAttribute("asesorias",ase);
        return "aseeditform";
    }

    @RequestMapping(value="/editsavease",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("asesorias") Asesoria ase){
        ass.editarAsesoria(ase);
        return "redirect:/viewase";
    }

    @RequestMapping(value="/deletease/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id){    
        ass.eliminarAsesoria(id);
        return "redirect:/viewase";
    }
}
