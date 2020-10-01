package com.m5d5.controladores;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
//import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.m5d5.dao.Cliente;
import com.m5d5.servicio.ClienteServicio;
@Controller
public class ClienteControlador {
	@Autowired
	ClienteServicio cs;
	
	@RequestMapping("/")
	public String getpagprincipal(Model model) {
		model.addAttribute("successMsg", "Administración Clientes");
		return "pagprincipal";
	}
	
    @RequestMapping("/cliform")
    public String showform(Model m){
        m.addAttribute("cliente", new Cliente());
        return "cliform";
    }
    @RequestMapping(value="/save",method = RequestMethod.POST)
    public String save(@ModelAttribute("cliente") Cliente cli){
        cs.agregarCliente(cli);
        return "redirect:/viewcli";
    }
    @RequestMapping("/agregarclienteDetalles")
	public String addClienteDetails(@ModelAttribute("cliente") Cliente cliente, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "viewcli";
		} else {
			cs.agregarCliente(cliente);
			model.addAttribute("successMsg", "El cliente ha sido agregado exitosamente");
			return "PagPrincipal";
		}
    }
    @RequestMapping("/viewcli")
    public String viewcliente(Model m){
        List<Cliente> list=cs.listarCliente();
        m.addAttribute("list",list);
        return "viewcli";
    }
    @RequestMapping("/listcli")
    public String listcli(Model m){
        List<Cliente> list=cs.listarCliente();
        m.addAttribute("list",list);
        return "listcli";
    }
    @RequestMapping(value="/editcli/{id}")
    public String edit(@PathVariable int id, Model m){
        Cliente cli=cs.findClienteByid(id);
        m.addAttribute("clie",cli);
        return "clieditform";
    }
    @RequestMapping(value="/editsave",method = RequestMethod.POST)
    public String editsave(@ModelAttribute("clie") Cliente cli){
        cs.editarCliente(cli);
        return "redirect:/viewcli";
    }
    @RequestMapping(value="/deletecli/{id}",method = RequestMethod.GET)
    public String delete(@PathVariable int id, Model m ){
        cs.eliminarCliente(id);
        m.addAttribute("successMsg", "El Cliente  ha sido eliminado exitosamente");
        return "redirect:/viewcli";
    }

    @RequestMapping("/error")
    public String error(ModelMap model)
    {
        model.addAttribute("error", "true");
        return "login";
    }
    @RequestMapping("/login")
    public String login()
    {
        System.out.println("Ingreso a login");
        return "login";
    }
    @RequestMapping("/logout")
    public String logout()
    {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
           	SecurityContextHolder.getContext().setAuthentication(null);
           }
           return "redirect:/login?logout"; //You can redirect wherever you want, but generally it's a good practice to show login screen again.
    }
    @RequestMapping("/403")
    public String cuatrocerotres(ModelMap model)
    {
       // System.out.println("Ingreso a login");
		 model.addAttribute("message", "Acceso Denegado");
        return "403";
    }
}

