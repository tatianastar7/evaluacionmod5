package com.m5d5.controladores;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.m5d5.dao.Chequeo;
import com.m5d5.dao.Visita;
import com.m5d5.servicio.ChequeoServicio;
import com.m5d5.servicio.VisitaServicio;
@Controller
public class ChequeoControlador {
	@Autowired
	ChequeoServicio ches;
	
	@Autowired
	VisitaServicio vis;
	
	
	   @RequestMapping("/cheqform")
	    public String showform(Model m){
	        m.addAttribute("chequeo", new Chequeo());
	        List<Visita> list=vis.listarVisita();
	        m.addAttribute("listvisita",list);
	        return "cheqform";
	    }
	    @RequestMapping(value="/savecheq",method = RequestMethod.POST)
	    public String save(@ModelAttribute("chequeo") Chequeo che){
	        ches.agregarChequeo(che);
	        return "redirect:/viewcheq";
	    }
	   
	    @RequestMapping("/viewcheq")
	    public String viewcheq(Model m){
	        List<Chequeo>list=ches.listarChequeo();
	        m.addAttribute("listad",list);
	        return "viewcheq";
	    }
	   
	    @RequestMapping(value="/deletecheq/{id}",method = RequestMethod.GET)
	    public String delete(@PathVariable int id){
	        ches.eliminarChequeo(id);
	        return "redirect:/viewcheq";
	    }
	}





