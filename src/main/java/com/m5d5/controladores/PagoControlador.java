package com.m5d5.controladores;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.m5d5.dao.Pago;
import com.m5d5.dao.Cliente;
import com.m5d5.servicio.PagoServicio;
import com.m5d5.servicio.ClienteServicio;
@Controller
public class PagoControlador {
	@Autowired
	PagoServicio pas;
	
	@Autowired
	ClienteServicio cs;
	
    @RequestMapping("/pagoform")
    public String showform(Model m){
        m.addAttribute("pago", new Pago());
        List<Cliente> list=cs.listarCliente();
        m.addAttribute("listclient",list);
        return "pagoform";
    }
    @RequestMapping("/notiatraso")
    public String showform2(Model m){
        List<Pago> list=pas.listarPago();
        m.addAttribute("listados",list);
        return "notiatraso";
    }
    @RequestMapping(value="/savepago",method = RequestMethod.POST)
    public String save(@ModelAttribute("pag") Pago pag, @RequestParam("cliente_id") int cliente_id){
    	
    	pag.setCliente_id(cliente_id);
    	System.out.println("ID cliente: " + pag.getCliente_id());
    	System.out.println(pag.toString());
        pas.agregarPago(pag);
        return "redirect:/viewpago";
    }
    @RequestMapping("/viewpago")
    public String viewpago(Model m){
        List<Pago> list=pas.listarPago();
        m.addAttribute("listados",list);
        return "viewpago";
    }
    @RequestMapping(value="/editpago/{id}")
    public String edit(@PathVariable int id, Model m){
        List<Cliente> list=cs.listarCliente();
        m.addAttribute("listclient",list);
    	Pago pa=pas.findPagoByid(id);
        m.addAttribute("pag",pa);
        return "pagoeditform";
    }
    @RequestMapping(value="/editsavepago",method = RequestMethod.POST)
    public String editsave(@ModelAttribute("command") Pago pa, @RequestParam("cliente_id") int cliente_id){
    	pa.setCliente_id(cliente_id);
    	System.out.println("ID cliente: " + pa.getCliente_id());
    	System.out.println(pa.toString());
        pas.editarPago(pa);
        return "redirect:/viewpago";
    }
    @RequestMapping(value="/deletepago/{id}",method = RequestMethod.GET)
    public String delete(@PathVariable int id){
        pas.eliminarPago(id);
        return "redirect:/viewpago";
    }
}
