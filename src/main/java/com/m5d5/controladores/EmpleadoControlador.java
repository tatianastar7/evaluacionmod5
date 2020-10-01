package com.m5d5.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.m5d5.dao.Empleado;
import com.m5d5.servicio.EmpleadoServicio;

@Controller
public class EmpleadoControlador {

	@Autowired
	EmpleadoServicio ems;
	
    @RequestMapping("/empform")    
    public String showform(Model m){
        m.addAttribute("empleado", new Empleado());
        return "empform";
    } 

    @RequestMapping(value="/empsave",method = RequestMethod.POST)    
    public String save(@ModelAttribute("emp") Empleado emp){    
        ems.agregarEmpleado(emp);
        return "redirect:/viewemp";
    }
    
    @RequestMapping("/viewemp")    
    public String viewemp(Model m){    
        List<Empleado> list=ems.listarEmpleado();
        m.addAttribute("listar",list);  
        return "viewemp";
    }
    
    @RequestMapping(value="/editemp/{id}")    
    public String edit(@PathVariable int id, Model m){    
    	Empleado emp=ems.findEmpleadoByid(id);
        m.addAttribute("emplea",emp);
        return "empeditform";
    }

    @RequestMapping(value="/editsaveemp",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("command") Empleado emp){
        ems.editarEmpleado(emp);
        return "redirect:/viewemp";
    }

    @RequestMapping(value="/deleteemp/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id){    
        ems.eliminarEmpleado(id);
        return "redirect:/viewemp";
    }

}




