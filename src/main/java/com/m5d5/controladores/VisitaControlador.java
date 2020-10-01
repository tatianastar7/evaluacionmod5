package com.m5d5.controladores;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.m5d5.dao.Visita;
import com.m5d5.dao.Cliente;
import com.m5d5.dao.Empleado;
import com.m5d5.servicio.VisitaServicio;
import com.m5d5.servicio.ClienteServicio;
import com.m5d5.servicio.EmpleadoServicio;
@Controller
public class VisitaControlador {
	@Autowired
	VisitaServicio vis;
	
	@Autowired
	ClienteServicio cs;
	
	@Autowired
	EmpleadoServicio ems;
	
    @RequestMapping("/visitaform")
    public String showform(Model m){
        m.addAttribute("visita", new Visita());
        List<Cliente> list=cs.listarCliente();
        m.addAttribute("listeclientes",list);
        List<Empleado> list1=ems.listarEmpleado();
        m.addAttribute("listaemp",list1);
        return "visitaform";
    }
    @RequestMapping(value="/savevisita",method = RequestMethod.POST)
    public String save(@ModelAttribute("vis") Visita vi){
        vis.agregarVisita(vi);
        return "redirect:/viewvisita";
    }
    @RequestMapping("/viewvisita")
    public String viewvisita(Model m){
        List<Visita>list=vis.listarVisita();
        m.addAttribute("listen",list);
        return "viewvisita";
    }
    @RequestMapping(value="/deletevisita/{id}",method = RequestMethod.GET)
    public String delete(@PathVariable int id){
        vis.eliminarVisita(id);
        return "redirect:/viewvisita";
    }
}






