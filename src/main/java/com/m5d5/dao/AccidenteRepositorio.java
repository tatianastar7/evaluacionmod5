package com.m5d5.dao;


//import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface AccidenteRepositorio extends CrudRepository<Accidente, Integer> {

	//List<Accidente> findAllByClienteidOrderByIdaccidente(int clienteid);
	
 }


