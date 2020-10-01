package com.m5d5.servicio;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.m5d5.dao.Visita;
import com.m5d5.dao.VisitaRepositorio;
@Service
public class VisitaServicioImpl implements VisitaServicio {
		@Autowired
		VisitaRepositorio vir;
		
		@Override
		public Visita findVisitaByid(int idvisita) {
			return vir.findOne(idvisita);
		}
		@Override
		public List<Visita> listarVisita() {
			return (List<Visita>) vir.findAll();
		}
		@Override
		public void agregarVisita(Visita vis) {
			vir.save(vis);
		}
		@Override
		public void eliminarVisita(int idvisita) {
			vir.delete(idvisita);
		}
}