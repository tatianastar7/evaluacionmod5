package com.m5d5.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MejoraRepositorio extends CrudRepository<Mejora, Integer>  {

}
