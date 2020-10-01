package com.m5d5.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.m5d5.dao.Accidente;
import com.m5d5.dao.Cliente;
import com.m5d5.servicio.AccidenteServicio;
import com.m5d5.servicio.ClienteServicio;


@Controller
public class AccidenteControlador {

	@Autowired
	AccidenteServicio as;
	
	@Autowired
	ClienteServicio cs;
		
    @RequestMapping("/acciform")    
    public String showform(Model m){
        m.addAttribute("accidente", new Accidente());
        List<Cliente> list=cs.listarCliente();
        m.addAttribute("listaclientes",list);  
        return "acciform";
    } 
   
    @RequestMapping(value="/cantacci/{id}")    
        public String contaracci(@PathVariable int id, Model m){    
          List<Accidente> acci=as.listarAccidente();
           
           int cantidad = 0;
           for (int i=0;i<acci.size();i++) {
        	   Accidente a = acci.get(i);
        	   if (a.getClienteid() == id)
        		   cantidad++;
           }
           
            m.addAttribute("count",cantidad);
            return "cantacci";
        }
    
    @RequestMapping(value="/saveacci",method = RequestMethod.POST)    
    public String save(@ModelAttribute("acci") Accidente acci){    
        as.agregarAccidente(acci);
        return "redirect:/viewacci";
    }
    
    @RequestMapping("/viewacci")    
    public String viewacci(Model m){    
        List<Accidente> list=as.listarAccidente();
        m.addAttribute("listas",list);  
        return "viewacci";
    }
    
    @RequestMapping(value="/editacci/{id}")    
    public String edit(@PathVariable int id, Model m){    
        Accidente acci=as.findAccidenteByid(id);
        m.addAttribute("acci",acci);
        return "accieditform";
    }

    @RequestMapping(value="/editsaveacci",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("acci") Accidente acci){
        as.editarAccidente(acci);
        return "redirect:/viewacci";
    }

    @RequestMapping(value="/deleteacci/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id, Model m){    
        as.eliminarAccidente(id);
        m.addAttribute("successMsg", "El accidente ha sido eliminado exitosamente");
        return "redirect:/viewacci";
    }
 }
 	

