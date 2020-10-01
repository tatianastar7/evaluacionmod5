package com.m5d5.controladores;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.m5d5.dao.Capacitacion;
import com.m5d5.dao.Visita;
import com.m5d5.servicio.CapacitacionServicio;
import com.m5d5.servicio.VisitaServicio;
@Controller
public class CapacitacionControlador {
	@Autowired
	CapacitacionServicio cas;
	@Autowired
	VisitaServicio vis;
	@RequestMapping("/capaform")
	public String showform(Model m) {
		m.addAttribute("capacitacion", new Capacitacion());
		List<Visita> list = vis.listarVisita();
		m.addAttribute("listavisit", list);
		return "capaform";
	}
	@RequestMapping(value = "/savecapa", method = RequestMethod.POST)
	public String save(@ModelAttribute("acci") Capacitacion cap) {
		cas.agregarCapacitacion(cap);
		return "redirect:/viewcapa";
	}
	@RequestMapping("/viewcapa")
	public String viewacci(Model m) {
		List<Capacitacion> list = cas.listarCapacitacion();
		m.addAttribute("listavisit", list);
		return "viewcapa";
	}
	@RequestMapping(value = "/editcapa/{id}")
	public String edit(@PathVariable int id, Model m) {
		Capacitacion cap = cas.findCapacitacionByid(id);
		m.addAttribute("capac", cap);
		return "capaeditform";
	}
	@RequestMapping(value = "/editsavecapa", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("command") Capacitacion cap) {
		cas.editarCapacitacion(cap);
		return "redirect:/viewcapa";
	}
	@RequestMapping(value = "/deletecapa/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable int id) {
		cas.eliminarCapacitacion(id);
		return "redirect:/viewcapa";
	}
}





