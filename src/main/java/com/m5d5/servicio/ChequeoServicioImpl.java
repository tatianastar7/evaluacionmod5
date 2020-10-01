package com.m5d5.servicio;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.m5d5.dao.Chequeo;
import com.m5d5.dao.ChequeoRepositorio;
@Service
public class ChequeoServicioImpl implements ChequeoServicio {
	@Autowired
	ChequeoRepositorio cher;
	
	@Override
	public Chequeo findChequeoByid(int idchequeo) {
		return cher.findOne(idchequeo);
	}
	@Override
	public List<Chequeo> listarChequeo() {
		return (List<Chequeo>) cher.findAll();
	}
	@Override
	public void agregarChequeo(Chequeo che) {
		cher.save(che);
	}
	@Override
	public void eliminarChequeo(int idchequeo) {
		cher.delete(idchequeo);
	}
}





