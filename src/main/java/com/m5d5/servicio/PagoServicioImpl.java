package com.m5d5.servicio;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.m5d5.dao.Pago;
import com.m5d5.dao.PagoRepositorio;


@Service
public class PagoServicioImpl implements PagoServicio {
	@Autowired
	PagoRepositorio par;
	
	@Override
	public Pago findPagoByid(int idpago) {
		return par.findOne(idpago);
	}
	@Override
	public List<Pago> listarPago() {
		return (List<Pago>) par.findAll();
	}
	@Override
	public void agregarPago(Pago pa) {
		par.save(pa);
	}
	@Override
	public void eliminarPago(int idpago) {
		par.delete(idpago);
	}
	@Override
	public void editarPago(Pago pa) {
		par.save(pa);
	}
}



